#Initializes the pure prompt
autoload -U promptinit; promptinit
prompt pure
#Auto completion
autoload -Uz compinit
compinit
#Hide localuser@localhost from prompt
DEFAULT_USER="soad"

#Vi Keybindings
bindkey -v

#alias
alias pacman="pacman --color=always"
alias pacaur="pacaur --color=always"

#pager setup
export PAGER=most

