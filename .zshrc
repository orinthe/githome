export PATH="${HOME}/bin:/netops/bin:/opt/local/bin:${PATH}"
export CLICOLOR=1
export PERL5LIB=\
$HOME/site_perl/lib/perl5\
:/netops/lib/perl5/site_perl\
:/netops/lib/perl5/site_perl/5.005\
:/netops/lib/perl5/site_perl/soap_modules\
:/netops/lib/perl5/local_perl

export PYTHONPATH=\
/netops/lib/python2.6/nmt-packages\
:/netops/lib/python2.6/site-packages\
:/netops/lib/python/nmt-packages\
:/netops/lib/python/site-packages


# history
HISTFILE=$HOME/.zhistory        # enable history saving on shell exit
HISTSIZE=1200                   # lines of history to maintain memory
SAVEHIST=1000                   # lines of history to maintain in history file.
setopt INC_APPEND_HISTORY       # append rather than overwrite history file.
setopt SHARE_HISTORY            # share history among all sessions
setopt HIST_EXPIRE_DUPS_FIRST   # allow dups, but expire old ones when I hit HISTSIZE
setopt EXTENDED_HISTORY         # save timestamp and runtime information

# set up aliases
alias zshrc="source $HOME/.zshrc"
alias ll="ls -Alh"
alias ff="noglob findfile"
alias fin="noglob findinside"
alias ud="source upd"
alias cf="source cdtofile"
alias vf="noglob vifile"
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
RPROMPT='$(hostname):%d'

