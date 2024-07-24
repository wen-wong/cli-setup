#!/bin/bash

# Code Reference: https://github.com/bartekspitza/dotfiles/blob/master/install.sh
function ask() {
	read -p "$1 (Y/n): " resp
	if [ -z "$resp" ]; then
		response_lc="y"
	else
		response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]')
	fi

	[ "$response_lc" = "y" ]
}

cd $HOME

sudo apt-get update
sudo apt-get upgrade

if ask "Do you want to setup Git config?"; then
  read -p "Enter email: " resp
  while [ -z "$resp" ]; do
    read -p "(Empty email) Enter email again: " resp
  done
  read -p "Enter username: " username
  while [ -z "$username" ]; do
    read -p "(Empty username) Enter username again: " username
  done
  git config --global user.email "$resp"
  git config --global user.name "$username"
fi

if ask "Do you want to install C libraries?"; then
	sudo apt intall gcc
	sudo apt install make
fi

if ask "Do you want to install neovim?"; then
  sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen ripgrep
  git clone https://github.com/neovim/neovim.git
  cd $HOME/neovim
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install
  cd $HOME
fi

if ask "Do you want to intall nvm?"; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

if ask "Do you want to install gleam?"; then
  wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
  sudo dpkg -i erlang-solutions_2.0_all.deb
  sudo apt-get update
  sudo apt-get install esl-erlang
fi
