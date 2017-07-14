#!/bin/bash

command -v vim >/dev/null 2>&1 || { echo >&2 "I require vim but it's not installed.  Aborting."; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }


cd 
mkdir .vim
mkdir .vim/colors
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

curl -Lo ~/.vim/colors/vice.vim https://raw.githubusercontent.com/bcicen/vim-vice/master/colors/vice.vim

wget https://raw.githubusercontent.com/aghosn/utils/master/vimrc
mv vimrc .vimrc



