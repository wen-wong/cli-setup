#!/bin/bash

cd $HOME

sudo apt-get update
sudo apt-get upgrade

sudo apt install gcc make

source ${INSTALL_PATH}/stow-setup.sh
source ${INSTALL_PATH}/tmux-setup.sh
source ${INSTALL_PATH}/neovim-setup.sh
source ${INSTALL_PATH}/docker-setup.sh
