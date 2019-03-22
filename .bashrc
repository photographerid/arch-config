#Proxy UI
#export http_proxy=http://152.118.24.10:8080/
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy

# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

alias p="sudo pacman"
alias sleep="systemctl suspend"
alias off="shutdown now"
alias r="ranger"
alias sr="sudo ranger"
alias torrent="transmission-remote"
alias yt="youtube-viewer"
alias wifi="nmcli device wifi list"
alias connect="nmcli device wifi connect"
alias screenshot="import -window root"
alias music="ncmpcpp"
alias spss="cd /opt/IBM/SPSS/Statistics/24/bin && ./statistics"
alias show="clear && neofetch && read"
alias spss="cd /opt/IBM/SPSS/Statistics/24/bin && ./statistics"
alias uninstall="sudo pacman -Rnsu"
alias mount="sudo dmenumount"
alias umount="sudo dmenuumount"
alias cameras="v4l2-ctl --list-devices"
alias mail="neomutt"
alias radio="mpv http://most1058fm.com/streaming & disown && exit"
alias radio-off="kill -s STOP $(pidof mpv)"

#setting bash prompt:
#if [ "$EUID" -ne 0 ]
#        then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
 #       else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
#fi
#PS1='[\w]\n$'
PS1='\[\e[1m\]\[\e[96m[\w]\]\n\[\e[93m\]\[\e[1m\]$ \[\e[0m\]'

alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

#Pywal
#(cat ~/.cache/wal/sequences &)

#Pywal dmenu
. "/home/halim/.cache/wal/colors.sh"
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
