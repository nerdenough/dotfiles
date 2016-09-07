require 'io/wait'

@cols = {
  :transparent => "#00FFFFFF",
  :text => "#FFFFFFFF",
}

@size = {
  :width => 1920,
  :height => 32,
  :hgap => 40,
  :vgap => 20
}

# Unicode for font awesome icons
@icons = {
  :terminal => "\uf120",
  :chrome => "\uf268",
  :firefox => "\uf269",
  :spotify => "\uf1bc",
  :code => "\uf121",
  :github => "\uf09b"
}

# GitHub username, why not?
@github = "nerdenough"

def text (text)
  "%{F#{@cols[:text]}}%{B#{@cols[:transparent]}} #{text} %{B-}%{F-}"
end

def icon (app)
  icon = ""

  if app == "Google Chrome" || app == "Chromium"
    icon = @icons[:chrome]
  elsif app == "Mozilla Firefox" || app == "Mozilla Firefox (Private Browsing)"
    icon = @icons[:firefox]
  elsif app == "Spotify"
    icon = @icons[:spotify]
  elsif app == "Atom"
    icon = @icons[:code]
  end

  icon
end

def github
  "#{@icons[:github]} #{@github}"
end

def title
  title = "#{`xtitle`.chomp}"

  if title.length > 0
    title = title.split(":").last
    title = title.split(" - ").last
    title = title.split(" — ").last

    # If you want icons for *some* applications, uncomment this
    #if icon(title).length > 0
    #  title = "#{icon(title)} #{title}"
    #end

    text(title)
  end
end

def time
  time = "#{`clock -f '%B%e, %I:%M %p'`.chomp}"
  text(time)
end

def capslock
  result = "#{`xset -q | grep 'Caps Lock: *on'`.chomp}";

  if result.length > 0
    text "CAPS"
  end
end

def numlock
  result = "#{`xset -q | grep 'Num Lock: *on'`.chomp}";

  if result.length > 0
    text "NUM"
  end
end

left = Proc.new do
  "#{github}"
end

center = Proc.new do
  "#{title}"
end

# Right Section
#
# Contains the time
right = Proc.new do
  texts = [capslock, numlock, time]
  str = ""

  texts.each_with_index do |text, index|
    str += text.to_s
    str += " " unless (index + 1) == texts.length
  end

  str
end

trap("SIGINT") { `bspc config top_padding 0`; exit 0 }
trap("SIGTERM") { `bspc config top_padding 0`; exit 0 }

`bspc config -m eDP1 top_padding #{@size[:height]}`

bar_cmd = "lemonbar -g #{@size[:width] - (@size[:hgap] * 2)}x"\
  "#{@size[:height]}+#{@size[:hgap]}+#{@size[:vgap]} "\
  "-F '#{@cols[:text]}' "\
  "-B '#{@cols[:transparent]}' "\
  "-f 'source sans pro:size=10:style=Bold' "\
  "-f 'font awesome:size=13'"

begin
  IO.popen(bar_cmd, "r+") do |pipe|
    loop do
      pipe.puts "%{l}#{left.call}%{c}#{center.call}%{r}#{right.call}"
      `#{pipe.readline}` if pipe.ready?
      sleep 0.1
    end
  end
rescue Exception => e
  puts e
end
