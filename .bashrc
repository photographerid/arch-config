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
alias mv="mv -i"
alias rm="rm -i"
#PS1='[\u@\h \W]\$ '
#vi mode
set -o vi
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
alias show="clear && neofetch"
alias spss="cd /opt/IBM/SPSS/Statistics/24/bin && ./statistics"
alias uninstall="sudo pacman -Rnsu"
alias mount="sudo dmenumount"
alias umount="sudo dmenuumount"
alias cameras="v4l2-ctl --list-devices"
alias mail="cd ~/Downloads && neomutt"
alias radio="mpv http://most1058fm.com/streaming & exit"
alias radio-off="kill -s STOP $(pidof mpv)"
alias heroes3="cd ~/.wine/drive_c/Program\ Files\ \(x86\)/GOG.com/Heroes\ of\ Might\ and\ Magic\ 3\ Complete/ && wine Heroes3.exe"
alias cuaca="clear && curl wttr.in"
alias ns="notify-send"
alias afk="cmatrix -s -u 9 -C cyan"
alias tg="telegram-cli -N"
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
alias ..="cd .."

#Pywal
#(cat ~/.cache/wal/sequences &)

#Pywal dmenu
. "/home/halim/.cache/wal/colors.sh"
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
