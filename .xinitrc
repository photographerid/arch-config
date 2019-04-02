xbindkeys &
systemctl --user import-environment DISPLAY #somewhat for dunst

#exec i3

#feh --bg-scale ~/.config/wall.png &
wal -R &
compton -b &
unclutter &
statusbar &
exec dwm
