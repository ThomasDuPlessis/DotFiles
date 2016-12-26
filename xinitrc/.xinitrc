xset +fp $HOME/.fonts
xset fp rehash

xrdb -merge ~/.Xresources

session=${1:-xmonad}

# stalonetray &
xsetroot -cursor_name left_ptr

case $session in
    i3|i3wm)
        compton &
        dunst &
        wal -i ~/Pictures/Wallpapers/4K
        wal-set
        urxvtd -q -f &
        exec i3;;

    xmonad)
        feh --randomize --bg-scale /home/tom/Pictures/Wallpapers/4K/* &
        exec xmonad;;

    # No known session, try to run it as command
    *) exec $1;;
esac
