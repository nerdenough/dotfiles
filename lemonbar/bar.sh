#!/bin/bash

PINK="#d8137f"
WHITE="#ffffff"

CLOCK() {
  DATETIME=$(date "+%A, %B %d, %I:%M %p")
  echo "$DATETIME"
}

VOLUME() {
  STATUS=$(amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]')
  PERCENT=$(amixer get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p')

  if [[ $STATUS == "[off]" ]]
  then
    ICON="\uE04F"
  elif [[ $PERCENT -eq 0 ]]
  then
    ICON="\uE04E"
  elif [[ $PERCENT -le 50 ]]
  then
    ICON="\uE04D"
  else
    ICON="\uE050"
  fi

  echo -e "%{B$PINK}%{F$WHITE} $ICON $PERCENT %{B-}%{F-}"
}

while true
do
  CENTER="$(CLOCK)"
  RIGHT="$(VOLUME)"
  PANEL="%{c}$CENTER%{r}$RIGHT"

  echo "$PANEL"
  sleep 0.1
done
