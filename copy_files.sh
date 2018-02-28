#!/bin/sh

cp ~/.bashrc .bashrc
cp ~/.bash_profile .bash_profile
cp ~/.gitconfig .gitconfig
cp ~/.gitignore_global .gitignore_global
cp ~/.vimrc .vimrc
cp ~/.git-completion.bash .git-completion.bash
cp ~/.tmux.conf .tmux.conf
cp ~/.iterm/com.googlecode.iterm2.plist com.googlecode.iterm2.plist
rm -rf .vim
cp -rp ~/.vim .vim
