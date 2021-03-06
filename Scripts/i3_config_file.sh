# i3 Config file by Vincintosh
#
# This configuration is shown in action on my YouTube channel
# www.youtube.com/vincintosh
# have a look over there
#
#
# I use this file on Manjaro i3: other distributions may slightly differ
#


####################
# i3-gaps settings #
####################
hide_edge_borders both
for_window [class="^.*"] border pixel 0
# You can change this values according to your preference
gaps inner 5
gaps outer 1

##########
# Basics #
##########
set $mod Mod4
floating_modifier $mod
set $term terminal
# I use Compton for composite, change the following line if you use xcompmgr or whatever
exec --no-startup-id compton
# I use Firefox as default browser
set $browser firefox
# Your default mail client
set $mail thunderbird
font pango:envypn 11
# Nm-applet is installed by default in Manjaro i3 and shows your available networks and lets you connect to them
exec --no-startup-id nm-applet

################################################################################################
## sound-section - DO NOT EDIT if you wish to automatically upgrade Alsa -> Pulseaudio later! ##
################################################################################################

exec --no-startup-id xset -b
exec --no-startup-id volumeicon
exec --no-startup-id pulseaudio
bindsym $mod+Ctrl+m exec terminal -e 'alsamixer'

########################################
# Status bar (replaces default i3-bar) #
########################################
# This requires bumblebee-status. 
# https://github.com/tobi-wan-kenobi/bumblebee-status
# You can customize what plugins blumblebee-status loads, the date and time format, the theme and the position of the bar itself

bar {
	status_command ~/bumblebee-status/bumblebee-status -m pasink pasource battery cpu datetime -p disk.path=/home datetime.format="%a %d %b %Y %H:%M" -t solarized-powerline
position bottom
	}
# Default bumblebee-status modules that I removed: nic pacman disk



####################
# Key Combinations #
####################
# You'll definitely want to change some of these

bindsym $mod+Return 		exec $term

bindsym $mod+Shift+space 	floating toggle
bindsym $mod+space		focus mode_toggle

bindsym $mod+Ctrl+Escape		exec --no-startup-id xset -display :0.0 dpms force off
bindsym $mod+Shift+Escape 	exec i3-msg exit
bindsym $mod+Shift+BackSpace	exec reboot
bindsym $mod+F4		exec sudo systemctl suspend
bindsym $mod+F5		exec sudo systemctl restart NetworkManager

bindsym $mod+q		kill
bindsym $mod+Shift+q	kill

# I use Nautilus as my file manager, change this according to your file manager and the folders you may want to have quick access to!
bindsym $mod+n		exec --no-startup-id nautilus
bindsym $mod+Shift+n	exec --no-startup-id nautilus ~/Documenti
bindsym $mod+Ctrl+n	exec --no-startup-id nautilus ~/Scaricati
# This is here should you need a root instance of you graphical file manager
bindsym $mod+Shift+F3	exec gksu nautilus

bindsym $mod+x		exec --no-startup-id firefox

# Having quick access to the i3 config file might be useful when configuring i3wm
bindsym $mod+Ctrl+C	exec gedit ~/.i3/config

# Bmenu is a useful configuration tool included in Manjaro i3
bindsym $mod+Ctrl+b exec terminal -e 'bmenu'

bindsym $mod+Shift+d --release exec "killall dunst; exec notify-send 'restart dunst'"

# Dmenu_recency ibindsym $mod+d exec --no-startup-id dmenu_recencys the dafult program launcher in Manjaro i3 and it works pretty good for me!
bindsym $mod+d exec --no-startup-id dmenu_recency


# Windows and Workspaces

# Change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# Change focus with cursor keys
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# Move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+h right

# Move focused window with cursor keys
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# Workspace switching
workspace_auto_back_and_forth yes
bindsym $mod+b workspace back_and_forth
bindsym $mod+Shift+b move container to workspace back_and_forth; workspace back_and_forth

# Split orientation: this is important as this defines where your next window will open! In fact, to make sure I'm aware of this, I also put a command to notify what tiling mode I've selected. I'm sure you'll want to change at least the notification text, since mine is in italian.
bindsym $mod+h split h;exec notify-send --expire-time=500 'Divisione [h]Orizzontale'
bindsym $mod+v split v;exec notify-send --expire-time=500 'Divisione [v]Verticale'
bindsym $mod+t split toggle;exec notify-send --expire-time=500 'Divisione toggle'

# Fullscreen toggle for the focused window
bindsym $mod+f	fullscreen toggle
bindsym F11	fullscreen toggle

# Layout (stacked, tabbed, toggle split) change, again with notification. These are intentionally assigned to uncommon key combinations since I don't use them that much
bindsym $mod+s layout stacking;exec notify-send --expire-time=500 'Layout Stacking'
bindsym $mod+Ctrl+w layout tabbed;exec notify-send --expire-time=500 'Layout Tabbed'
bindsym $mod+Ctrl+e layout toggle split;exec notify-send --expire-time=500 'Layout Split'
# Toggle sticky, again rarely used by me
bindsym $mod+Shift+s sticky toggle;exec notify-send --expire-time=500 'Toggle sticky'

# Workspace change Next/Prev (this is useful, as it only cycles through workspaces you're actually using at the moment)
bindsym $mod+Ctrl+Right workspace next
bindsym $mod+Ctrl+Left workspace prev

# Arandr is the graphical frontend of xrandr and easily allows you to configure monitors. It is useful to have quick access to it if you usually switch to various external monitors/projectors
bindsym $mod+F7		exec arandr


############################
# Workspaces configuration #
############################
# I'm putting this section here because I feel it makes the file easier to read

# The following will be your configured workspaces. You can name them whatever you want, here I'm just setting their corresponding number as their name.
# If you want them to have little icons like the ones shown in my video, you'll need to install a font called Font Awesome, from http://fontawesome.io . Then, from the same website (or by googleing it) you can find the cheatsheet page with all the symbols available in this font. Just choose one, copy it and paste it here in place of the desired workspace name. Here I left the tux icon as an example.

set $ws1 "1: "
set $ws2 "2: "
set $ws3 "3: "
set $ws4 "4: "
set $ws5 "5: "
set $ws6 "6: "
set $ws7 "7: "
set $ws8 "8: "
set $ws9 "9: "
set $ws10 "10: "


# Usual workspace switching
bindsym $mod+1		workspace $ws1
bindsym $mod+2		workspace $ws2
bindsym $mod+3		workspace $ws3
bindsym $mod+4		workspace $ws4
bindsym $mod+5		workspace $ws5
bindsym $mod+6		workspace $ws6
bindsym $mod+7		workspace $ws7
bindsym $mod+8		workspace $ws8
bindsym $mod+9		workspace $ws9
bindsym $mod+0		workspace $ws10

# Move focused window to desired workspace (very useful)
bindsym $mod+Shift+1	move container to workspace $ws1
bindsym $mod+Shift+2	move container to workspace $ws2
bindsym $mod+Shift+3	move container to workspace $ws3
bindsym $mod+Shift+4	move container to workspace $ws4
bindsym $mod+Shift+5	move container to workspace $ws5
bindsym $mod+Shift+6	move container to workspace $ws6
bindsym $mod+Shift+7	move container to workspace $ws7
bindsym $mod+Shift+8	move container to workspace $ws8
bindsym $mod+Shift+9	move container to workspace $ws9
bindsym $mod+Shift+0	move container to workspace $ws10


# Here you can also put some "rules" for which i3 automatically starts certain apps on a default workspace. I don't use this function, but if you want to enable it, I left one example line.
#for_window [class="Firefox"] move to workspace $ws2

# This is useful instead if you use GIMP as this will take full advantage of the power of a tiling window manager, fixing the panels to the sides of the screen instead of aving them floating around. You might want to change the "px" or "ppt" values according to your screen size and resolution (needs some trial and error)
#for_window [window_role="gimp-dock"] floating disable; move left; resize shrink width 50 px or 50ppt
#for_window [window_role="gimp-toolbox"] floating disable; move right; resize grow width 30 px or 30ppt

# More useful workspaces key combinations
bindsym $mod+Home		workspace $ws1
bindsym $mod+Shift+Home		move container to workspace $ws1
bindsym $mod+End		workspace $ws10
bindsym $mod+Shift+End		move container to workspace $ws10
bindsym $mod+Prior		workspace prev
bindsym $mod+Shift+Prior	move container to workspace prev
bindsym $mod+Next		workspace next
bindsym $mod+Shift+Next		move container to workspace next



####################
# Default floating #
####################

# The following applications and/or window classess will be opened in floating mode by default. This is useful as these are usually small window apps or dialog boxes and you don't want them to steal a significant part of your screen by tiling them
for_window [title="alsamixer"] floating enable border pixel 1
for_window [class="Galculator"] floating enable border pixel 1
for_window [class="GParted"] floating enable border normal
for_window [title="i3_help"] floating enable sticky enable border normal
for_window [class="Lightdm-gtk-greeter-settings"] floating enable
for_window [class="Lxappearance"] floating enable sticky enable border normal
for_window [class="Manjaro-hello"] floating enable
for_window [class="Manjaro Settings Manager"] floating enable border normal
for_window [class="Nitrogen"] floating enable sticky enable border normal
for_window [class="Pamac-manager"] floating enable
for_window [class="Pavucontrol"] floating enable
for_window [class="qt5ct"] floating enable sticky enable border normal
for_window [class="Qtconfig-qt4"] floating enable sticky enable border normal
for_window [class="(?i)System-config-printer.py"] floating enable border normal
for_window [class="Skype"] floating enable border normal
for_window [class="Timeset-gui"] floating enable border normal
for_window [class="(?i)virtualbox"] floating enable border normal
for_window [class="Xfburn"] floating enable


##############
# Media Keys #
##############
bindsym $mod+plus		exec --no-startup-id pamixer -i 5
bindsym $mod+Shift+plus		exec --no-startup-id pamixer -i 15

bindsym $mod+minus 		exec --no-startup-id pamixer -d 5
bindsym $mod+Shift+minus	exec --no-startup-id pamixer -d 15

bindsym $mod+bracketleft 	exec --no-startup-id mocp -k -10
bindsym $mod+Shift+bracketleft 	exec --no-startup-id mocp -k -120

bindsym $mod+bracketright 	exec --no-startup-id mocp -k 10
bindsym $mod+Shift+bracketright exec --no-startup-id mocp -k 120

# "XF86" are special keys found on most laptop keyboards, but I'm not sure if they work all the same. For my ThinkPad X220 these work, but you might want to check. xorg-xev can help.
bindsym XF86AudioPlay		exec --no-startup-id mocp -G
bindsym XF86AudioPause		exec --no-startup-id mocp -G
bindsym XF86AudioNext		exec --no-startup-id mocp -f
bindsym XF86AudioPrev		exec --no-startup-id mocp -r
bindsym XF86AudioStop		exec --no-startup-id mocp -G
# Here i have volume controls with notification support. Again, you might want to change the notification text, since mine is in italian (and also uses symbles from the Fontawesome font). Notice how I call the pamixer command to get the volume state and display it in the notification.
bindsym XF86AudioRaiseVolume	exec --no-startup-id "pamixer -i 5; notify-send --expire-time=250 '  Alza Volume ['$(pamixer --get-volume)'%]'"
bindsym XF86AudioLowerVolume	exec --no-startup-id "pamixer -d 5; notify-send --expire-time=250 '  Abbassa Volume ['$(pamixer --get-volume)'%]'"
bindsym XF86AudioMute		exec --no-startup-id "pamixer -t; notify-send --expire-time=250 ' /  Toggle'"
bindsym XF86AudioMicMute	exec --no-startup-id "pactl set-source-mute 1 toggle; notify-send --expire-time=250 '/ Toggle'"
bindsym Scroll_Lock 	exec --nostartup-id "notify-send 'Scroll Lock Toggle'"


###########################
# i3 and power management #
###########################
# Reload the configuration file
bindsym $mod+Shift+c reload

# Restart i3 (restarts only the window manager, so your opened files and applications won't be touched! very useful)
bindsym $mod+Shift+r restart

# Exit i3 (This instead force closes everything and restarts X session! You'll loose unsaved data!)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# Shut down, restart and locking
bindsym $mod+Escape mode "$mode_system"
set $mode_system (l)ock, (e)xit, switch_(u)ser, (s)uspend, (h)ibernate, (r)eboot, (Shift+s)hutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id i3exit lock, mode "default"
    bindsym s exec --no-startup-id i3exit suspend, mode "default"
    bindsym u exec --no-startup-id i3exit switch_user, mode "default"
    bindsym e exec --no-startup-id i3exit logout, mode "default"
    bindsym h exec --no-startup-id i3exit hibernate, mode "default"
    bindsym r exec --no-startup-id i3exit reboot, mode "default"
    bindsym Shift+s exec --no-startup-id i3exit shutdown, mode "default"

    # exit system mode: "Enter" or "Escape"
    bindsym Return mode "default"
    bindsym Escape mode "default"
}

# Resize window (you can also use the $mod+right_mouse_button for that)
bindsym $mod+r mode "resize"
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode
        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 5 px or 5 ppt
        bindsym k resize grow height 5 px or 5 ppt
        bindsym l resize shrink height 5 px or 5 ppt
        bindsym semicolon resize grow width 5 px or 5 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # exit resize mode: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

# The following key combination locks your screen. You need blurlock installed
bindsym $mod+Ctrl+Shift+Escape exec --no-startup-id blurlock

#############
# Autostart #
#############
# The following are the commands the automatically run when you login and i3wm is started
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
# Restores your wallpaper, assuming you use Nitrogen to set your wallpaper (since it is the default option in Manjaro i3 and works flawlessly). You might want to change this if you use feh
exec --no-startup-id nitrogen --restore; sleep 1; compton --config  ~/.config/compton.conf -b

# Default tray icons you find in Manjaro i3. I left them because they work fine
exec --no-startup-id nm-applet
exec --no-startup-id xfce4-power-manager
exec --no-startup-id pamac-tray
exec --no-startup-id clipit
# Starts Conky, as configured by default in Manjaro i3. I use the start_conky_grey script that runs the conky_gray configuration file with some modifications. You might want to change this if you don't use conky or use a different configuration file
exec --no-startup-id start_conky_grey
# exec --no-startup-id start_conky_green --> this is the default conky start script on Manjaro i3
exec --no-startup-id xautolock -time 10 -locker blurlock
exec_always --no-startup-id ff-theme-util
exec_always --no-startup-id fix_xcursor

# This is the color palette for your default terminal emulator. You can set the colors in your ~/.Xresources file.
set_from_resource $term_background background
set_from_resource $term_foreground foreground
set_from_resource $term_color0     color0
set_from_resource $term_color1     color1
set_from_resource $term_color2     color2
set_from_resource $term_color3     color3
set_from_resource $term_color4     color4
set_from_resource $term_color5     color5
set_from_resource $term_color6     color6
set_from_resource $term_color7     color7
set_from_resource $term_color8     color8
set_from_resource $term_color9     color9
set_from_resource $term_color10    color10
set_from_resource $term_color11    color11
set_from_resource $term_color12    color12
set_from_resource $term_color13    color13
set_from_resource $term_color14    color14
set_from_resource $term_color15    color15

# Color palette used for i3 
# Variables are set based on the documentation:
# https://i3wm.org/dovs/userguide.html#variables
# Changing the value of one of the variables will
# effect all the areas with the same color.
set $i3_background      #2B2C2B
set $i3_text            #F9FAF9
set $i3_separator       #454947
set $i3_color1          #f0faf9
set $i3_color2          #595B5B
set $i3_color3          #353836
set $i3_color4          #16A085
set $i3_color5          #FDF6E3
set $i3_color6          #EEE8D5
set $i3_color7          #E5201D
set $i3_color8          #808380
set $i3_color9          #434745
set $i3_color10         #454948
set $i3_color11         #80FFF9
set $i3_color12         #FDF6E3
set $i3_color13         #CB4B16
set $i3_color14         #268BD2
set $i3_color15         #000000
set $i3_color16         #ffffff
set $i3_color17         #0c0c0c