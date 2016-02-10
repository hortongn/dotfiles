#!/bin/sh

if [ -f /home/vagrant/.bashrc ]; then
  cp /home/vagrant/.bashrc .bashrc
fi

if [ -f /home/vagrant/.bash_profile ]; then
  cp /home/vagrant/.bash_profile .bash_profile
fi

if [ -f /Users/hortongn/.bashrc ]; then
  cp /Users/hortongn/.bashrc .bashrc.mac
fi

if [ -f /Users/hortongn/.bash_profile ]; then
  cp /Users/hortongn/.bash_profile .bash_profile.mac
fi

cp ~/.gitconfig .gitconfig
cp ~/.gitignore_global .gitignore_global
cp ~/.vimrc .vimrc
cp ~/.git-completion.bash .git-completion.bash
cp ~/.tmux.conf .tmux.conf
rm -rf .vim
cp -rp ~/.vim .vim
