#!/bin/sh

cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
cp .vimrc ~/.vimrc
cp .git-completion.bash ~/.git-completion.bash
cp .tmux.conf ~/.tmux.conf
rm -rf ~/.vim
cp -rp .vim ~/.vim
