#!/bin/bash
rm -rf ~/.vim
rm ~/.vimrc
rm ~/.ctags
cp files/HOME/vimrc ~/.vimrc
cp files/HOME/ctags ~/.ctags
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall
