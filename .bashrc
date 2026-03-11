#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias c='clear'
alias start='sudo systemctl start'
alias status='systemctl status'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias enable='sudo systemctl enable'
alias disable='sudo systemctl disable'
alias waybar-reload='pkill waybar && hyprctl dispatch exec waybar'
alias major='bluetoothctl power on && bluetoothctl connect 1C:6E:4C:A8:14:35'
alias garage="docker exec -ti soc-data-garage-1 /garage"
alias venv="source .venv/bin/activate"
alias d="docker"
alias dc="docker compose"

alias sb="source .bashrc"

eval "$(starship init bash)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
export PATH=$HOME/.local/bin:$PATH
