export PATH="${PATH}:/opt/local/bin/:${HOME}/bin"
export CLICOLOR=1

# set up aliases
alias zshrc="source $HOME/.zshrc"
alias ll="ls -Alh"
alias ff="noglob findfile"
alias fin="noglob findinside"
alias ud="source upd"
alias cf="source cdtofile"
alias vf="noglob vifile"
alias scm="./scm"
alias dash="javaws http://dash.cac.washington.edu/Dash-production/Dash.jnlp"

fpath=(~/.zsh/completion $fpath)

autoload -U compinit promptinit
compinit
promptinit

# Allow for functions in the prompt.
setopt PROMPT_SUBST
 
PROMPT='%n%(!.#.$) '

# I use `hostname` isntead of %m/%M because the latter seems to only get
# updated when the shell is started, but DHCP updates my hostname all the time
RPROMPT='$(hostname):%~'

