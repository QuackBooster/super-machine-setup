#!/bin/bash

# Install vim-plug NEOVIM unix
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# COC List
rm ~/.config/coc/extensions/package.json
mkdir -p ~/.config/coc/extensions/

# Package.json is handled for SMS
ln -s `pwd`/vim/package.json ~/.config/coc/extensions/package.json

# NEOVIM INIT VIM
rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/
ln -s `pwd`/vim/init.vim ~/.config/nvim/init.vim

rm ~/.config/nvim/coc-settings.json
ln -s `pwd`/vim/package.json ~/.config/nvim/package.json

# VIM NATIVE
# Delete no require vim files
# rm ~/.vimrc

nvim -c "PlugInstall" -c qa!
