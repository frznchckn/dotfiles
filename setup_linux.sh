#!/bin/bash

set -e

NOW=$(date +"%Y%m%d-%H%M")
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

DOTFILESs="bashrc vimrc gitconfig screenrc tkconrc"

# create backup directory for all originals
if [ -e "$HOME/.bak" ]
then
  echo "Backup directory already exists"
else
  echo "Creating backup directory ~/.bak"
  mkdir "$HOME/.bak"
fi

for file in $DOTFILESs; do
    if [ -e "$HOME/.$file" ]
    then
        echo "Backing up original .$file";
        mv "$HOME/.$file" "$HOME/.bak/.$file-$NOW"
    fi

    ln -sf $DIR/$file ~/.$file

done

echo "Create .vim directory and such"
if [ -d "$HOME/.vim" ]
then
  echo "Backup up original .vim";
  mv "$HOME/.vim" "$HOME/.bak/.vim-$NOW"
fi

echo ""

mkdir -p "$HOME/.vim/autoload"
mkdir "$HOME/.vim/bundle"
#echo "Git get of pathogen.vim"
#wget http://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O ~/.vim/autoload/pathogen.vim

#echo "Git clone of Colour-Sampler-Pack\n"
#git clone http://github.com/vim-scripts/Colour-Sampler-Pack "$HOME/.vim/bundle/Colour-Sampler-Pack"
#echo "Git clone of ScrollColors\n"
#git clone http://github.com/vim-scripts/ScrollColors "$HOME/.vim/bundle/ScrollColors"
#echo "Git clone of Snipmate\n"
#git clone http://github.com/msanders/snipmate.vim "$HOME/.vim/bundle/snipmate.vim"
#echo "Git clone of Comments\n"
#git clone http://github.com/frznchckn/comments.vim "$HOME/.vim/bundle/comments.vim"
