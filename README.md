# Git-managed Home Directory
=================

Installation
------------

    pushd ~
    git clone ssh://git@github.com:orinthe/githome.git
    setopt GLOB_DOTS EXTENDED_GLOB; for FILE in githome/*~githome/.git~githome/README.md; do ln -s $FILE; done; unsetopt GLOB_DOTS EXTENDED_GLOB 
    echo 'source ~/githome/.zshrc' >> ~/.zshrc
    popd
