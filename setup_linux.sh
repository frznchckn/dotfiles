#!/bin/sh

# save original .bashrc if exists

now=$(date +"%Y%m%d-%H%M")

if [ -e "$HOME/.bak" ]
then
  echo "Backup directory already exists"
else
  echo "Creating backup directory ~/.bak"
  mkdir "$HOME/.bak"
fi

if [ -e "$HOME/.bashrc" ]
then
  echo "Backing up original .bashrc";
  mv "$HOME/.bashrc" "$HOME/.bak/.bashrc-$now"
fi

ln -s ~/dotfiles/bashrc ~/.bashrc

if [ -e "$HOME/.vimrc" ]
then
  echo "Backing up original .vimrc";
  mv "$HOME/.vimrc" "$HOME/.bak/.vimrc-$now"
fi

ln -s ~/dotfiles/vimrc ~/.vimrc

if [ -d "$HOME/.vim" ]
then
  echo "Backup up original .vim";
  mv "$HOME/.vim" "$HOME/.bak/.vim-$now"
fi

if [ -d "$HOME/.gitconfig" ]
then
  echo "Backup up original .gitconfig";
  mv "$HOME/.gitconfig" "$HOME/.bak/.gitconfig-$now"
fi

ln -s ~/dotfiles/gitconfig ~/.gitconfig

echo ""

echo "Create .vim directory and such"
mkdir -p "$HOME/.vim/autoload"
mkdir "$HOME/.vim/bundle"
echo "Git get of pathogen.vim"
wget http://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O ~/.vim/autoload/pathogen.vim

echo "Git clone of Colour-Sampler-Pack\n"
git clone http://github.com/vim-scripts/Colour-Sampler-Pack "$HOME/.vim/bundle/Colour-Sampler-Pack"
echo "Git clone of ScrollColors\n"
git clone http://github.com/vim-scripts/ScrollColors "$HOME/.vim/bundle/ScrollColors"
echo "Git clone of Snipmate\n"
git clone http://github.com/msanders/snipmate.vim "$HOME/.vim/bundle/snipmate.vim"
echo "Git clone of Comments\n"
git clone http://github.com/frznchckn/comments.vim "$HOME/.vim/bundle/comments.vim"
