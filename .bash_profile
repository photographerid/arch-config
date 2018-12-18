#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export BROWSER="qutebrowser"
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
