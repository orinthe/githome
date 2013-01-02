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

# Allow for functions in the prompt.
setopt PROMPT_SUBST
 
# Crappy function to get my IP address
function get_ip {
  ifconfig -u | awk '{ if ( $1 == "inet" && $2 != "127.0.0.1" ) print $2 }'
}

PROMPT='%n@%m%(!.#.$) '
RPROMPT='$(get_ip):%~'



