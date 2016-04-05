xset +fp $HOME/.fonts
xset fp rehash

albert &

xrdb -merge ~/.Xresources

session=${1:-xmonad}

# stalonetray &
xsetroot -cursor_name left_ptr

case $session in
    awesome           ) exec awesome;;
    bspwm             ) exec bspwm;;
    dwm               ) exec dwm;;
    gnome             ) exec gnome-session --session=xmonad;;
    gnome-classic     ) exec gnome-session --session=gnome-classic;;
    i3|i3wm           ) exec i3;;
    kde               ) exec startkde;;
    xmonad            ) exec xmonad;;
    # No known session, try to run it as command
    *) exec $1;;
esac



