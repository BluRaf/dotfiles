#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[[ -f /usr/bin/x-session-manager ]] && exec x-session-manager

# fallback when x-session-manager isn't available (distro != Debian-based)
xsetroot -solid "#002B36"
~/.fehbg

compton &
tint2 &
exec openbox
