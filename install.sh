#!/usr/bin/env bash

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
