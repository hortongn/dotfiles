#!/bin/sh

cp ~/.bashrc .bashrc
cp ~/.bash_profile .bash_profile
cp ~/.profile .profile
cp ~/.gitconfig .gitconfig
cp ~/.vimrc .vimrc
rm -rf .vim
cp -rp ~/.vim .vim
