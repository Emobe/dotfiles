!#/bin/bash

update(){
  sudo pacman -Syyu
}

setup_zsh(){
  echo Installing zsh...
  sudo pacman -S zsh
  chsh -s /bin/zsh $USER
}

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
