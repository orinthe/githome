export PATH="${PATH}:/opt/local/bin/:${HOME}/bin"

#export PS1="\n[\w]\n\h:\u\$ "
export PS1="\u$ "

print_pre_prompt () 
{ 
    PS1L=$PWD
    if [[ $PS1L/ = "$HOME"/* ]]; then PS1L=\~${PS1L#$HOME}; fi
    PS1R=$USER@$HOSTNAME
    printf "%s%$(($COLUMNS-${#PS1L}))s" "$PS1L" "$PS1R"
}
PROMPT_COMMAND=print_pre_prompt

alias bashrc="source $HOME/.bashrc"
alias ff="findfile"
alias fin="findinside"
alias ud="source upd"
alias ls="ls -G"

