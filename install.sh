#!/usr/bin/env bash

echo "Installing / updating oh-my-zsh"
if [ ! -e ~/.oh-my-zsh ]; then 
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
  pushd ~/.oh-my-zsh
  git pull
  popd
fi

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm -rf ~/.vim

echo "Symlinking files"
ln -s ~/GIT/dotfiles/vimrc ~/.vimrc
ln -s ~/GIT/dotfiles/zshrc ~/.zshrc
ln -s ~/GIT/dotfiles/vim ~/.vim

cp ~/GIT/dotfiles/oh-my-zsh/themes/* ~/.oh-my-zsh/themes/
