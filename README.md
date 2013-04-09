# Git-managed Home Directory
=================

Installation
------------

    cd ~
    git clone ssh://git@bitbucket.org/ekoniak/githome.git
    setopt -4; for FILE in home.git/*; do ln -s $FILE; done; setopt +4
    rm .git README.md
    
