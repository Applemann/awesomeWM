xmodmap -e "remove Lock = Caps_Lock"
#xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 9 = Escape NoSymbol Escape"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xscreensaver -no-splash &
