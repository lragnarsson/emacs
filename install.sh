#!/bin/sh

if [ -d "$HOME/.emacs.d" ] ; then
    echo "$HOME/.emacs.d already exist. Remove or move it first."
else
    ln -s "$(cd "$(dirname "$0")" && pwd)/emacs.d/" "$HOME/.emacs.d"
    echo "Created symbolic link to ~/.emacs.d"
fi
