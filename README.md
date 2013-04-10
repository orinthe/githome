# Git-managed Home Directory
=================

Installation
------------

    pushd ~
    git clone ssh://git@bitbucket.org/ekoniak/githome.git
    setopt GLOB_DOTS EXTENDED_GLOB; for FILE in githome/*~githome/.git~githome/README.md; do ln -s $FILE; done; unsetopt GLOB_DOTS EXTENDED_GLOB 
    popd
