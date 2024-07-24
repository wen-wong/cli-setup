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

if ask "Do you want to install C libraries?"; then
	sudo apt intall gcc
	sudo apt install make
fi

if ask "Do you want to install neovim?"; then
	sudo apt install neovim
fi
