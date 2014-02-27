#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

xrdb -merge .Xresources         # Setup for urxvt
setxbacklight -set 40           # Set the backlight down
xsetroot -cursor_name left_ptr  # Make cursor look pretty
setxkbmap dk                    # Danish keymap
xbindkeys                       # Activate media keyes etc.
#qtraynotify                     # Mcabber notification program. Disabled until fixed for spectrwm.

# Start WM based on SLiM input
DEFAULTSESSION=spectrwm

case "$1" in
    i3) exec i3 ;;
    spectrwm) spectrwm ;;
    *) exec $DEFAULTSESSION ;;
esac
