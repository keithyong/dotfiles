#!/bin/bash
dir=~/dotfiles
files="vimrc zshrc tmux.conf slate.js"
echo "Changing to the $dir directory"
cd $dir
echo "...done"
for file in $files; do
    echo "Creating symlink >>> ~/.$file -> ~/dotfiles/$file"
    ln -s $dir/$file ~/.$file
done
