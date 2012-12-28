export PATH="${PATH}:/opt/local/bin/:${HOME}/bin"
export CLICOLOR=1

# set up aliases
alias zshrc="source $HOME/.zshrc"

alias ff="noglob findfile"
alias fin="noglob findinside"
alias ud="source upd"
alias cf="source cdtofile"
alias vf="noglob vifile"

autoload -U compinit promptinit
compinit
promptinit
 
PROMPT='%n%(!.#.$) '
RPROMPT='%d on %m'

