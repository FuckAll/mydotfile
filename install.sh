#!/bin/bash
set -e
mkdir()
{
mkdir -p ~/.vim/bundle/
}

git_clone()
{
  git clone https://github.com/VundleVim/Vundle.vim.git
}

mkdir
git_clone
vim +PluginInstall +qal
