[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT SSH_AUTH_SOCK

/usr/bin/gnome-keyring-daemon --start --components=gpg
/usr/bin/gnome-keyring-daemon --start --components=pkcs11
/usr/bin/gnome-keyring-daemon --start --components=secrets
/usr/bin/gnome-keyring-daemon --start --components=ssh

exec bspwm
