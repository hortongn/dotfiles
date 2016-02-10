#!/bin/sh

if [ -f /home/vagrant/.bashrc ]; then
  cp .bashrc /home/vagrant/.bashrc
fi

if [ -f /home/vagrant/.bash_profile ]; then
  cp .bash_profile /home/vagrant/.bash_profile
fi

if [ -f /Users/hortongn/.bashrc ]; then
  cp .bashrc.mac /Users/hortongn/.bashrc
fi

if [ -f /Users/hortongn/.bash_profile ]; then
  cp .bash_profile.mac /Users/hortongn/.bash_profile
fi

cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
cp .vimrc ~/.vimrc
cp .git-completion.bash ~/.git-completion.bash
cp .tmux.conf ~/.tmux.conf
rm -rf ~/.vim
cp -rp .vim ~/.vim
