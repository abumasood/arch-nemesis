#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Marco Obaid
# GitHub    :   https://github.com/abumasood
##################################################################################################################
#
#   Install/Conigure Powerline on ArcoLinux
#
##################################################################################################################

sudo pacman -S powerline --noconfirm --needed
sudo pacman -S powerline-fonts --noconfirm --needed
sudo pacman -S powerline-vim --noconfirm --needed
sudo pacman -S python-powerline --noconfirm --needed

#[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"

#cd ~/DATA
#git clone https://github.com/abumasood/myfiles/

### Configure Powerline for vim
#cp -f ~/DATA/myfiles/powerline/vim/.vimrc ~/
#sudo cat ~/DATA/myfiles/powerline/vim/etc-vimrc >> /etc/vimrc

### Configure Powerline for tmux
#cp -f ~/DATA/myfiles/powerline/vim/.tmux.conf ~/


echo "################################################################"
echo "#########          Powerline is now configure         ##########"
echo "################################################################"
