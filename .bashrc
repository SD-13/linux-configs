#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[\e[38;5;216m\]\u\[\e[38;5;160m\]@\[\e[38;5;202m\]\h \[\e[38;5;131m\]\w \[\033[0m\]$ "
source <(kubectl completion bash)
alias k=kubectl
complete -o default -F __start_kubectl k
source <(kind completion bash)
source <(k3s completion bash)
