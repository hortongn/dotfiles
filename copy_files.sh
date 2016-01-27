#!/bin/sh

cp ~/.bashrc .bashrc
cp ~/.bash_profile .bash_profile
cp ~/.profile .profile
cp ~/.gitconfig .gitconfig
cp ~/.gitignore_global .gitignore_global
cp ~/.vimrc .vimrc
cp ~/.git-completion.bash .git-completion.bash
rm -rf .vim
cp -rp ~/.vim .vim
