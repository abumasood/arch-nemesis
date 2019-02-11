#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Marco Obaid
# GitHub    :   https://github.com/abumasood
##################################################################################################################
#
#   Main Script to run post Arcolinux install to install/configure applications and settings
#
##################################################################################################################

### Core System Configurations
sh scripts/install-cups-v*.sh  ###>>> Need to install Brother HL-2070N printer
sh scripts/install-hblock-v*.sh
sh scripts/install-lightdm-webkit-v*.sh
sh scripts/install-nvidia-v*.sh
sh scripts/install-powerline-v*.sh
sh scripts/install-swapfile-v*.sh
sh scripts/install-ufw-v*.sh  
sh scripts/install-zsh-v*.sh


echo "Cloning Github Repos"
mkdir $HOME/DATA
cd $HOME/DATA
git clone https://github.com/abumasood/myfiles
git clone https://github.com/abumasood/mybackgrounds

echo "################################################################"
echo "###################    Git Clone Done      ######################"
echo "################################################################"
echo "Copy bashrc-personal"
cp -f ~/DATA/myfiles/bashrc/bashrc-personal ~/.bashrc-personal
echo "Copying Variety Favorites"
cp -f ~/DATA/mybackgrounds/wallpapers/* ~/.config/variety/Favorites/


echo "################################################################"
echo "####                INSTALLING APPS                       ######"
echo "################################################################"

### Fun stuff
sudo pacman -S asciiquarium --noconfirm --needed
sudo pacman -S cmatrix --noconfirm --needed
sudo pacman -S cool-retro-term --noconfirm --needed
sudo pacman -S cowfortune --noconfirm --needed
sudo pacman -S figlet --noconfirm --needed
sudo pacman -S lolcat --noconfirm --needed
sudo pacman -S boxes --noconfirm --needed

### Graphics
sudo pacman -S blender --noconfirm --needed
sudo pacman -S flameshot --noconfirm --needed

### Tools 
sudo pacman -S mc --noconfirm --needed
sudo pacman -S ranger --noconfirm --needed
sudo pacman -S sl --noconfirm --needed
sudo pacman -S ufetch-arco-git --noconfirm --needed
sudo pacman -S youtube-dl --noconfirm --needed
sh scripts/install-caffeine-ng-v*.sh
sh scripts/install-vtop-v*.sh
##### Add Nemo here after testing it ######

### System
#sudo yay -S  --noconfirm --needed
###sudo pacman -S qt5ct --noconfirm --needed
sudo pacman -S linux-headers
sudo pacman -S expac --noconfirm --needed
sudo pacman -S gtop --noconfirm --needed
###sudo pacman -S vtop --noconfirm --needed


### Virtualbox
#sudo pacman -S virtualbox --noconfirm --needed
sudo pacman -S virtualbox-host-modules-arch --noconfirm --needed
sudo pacman -S open-vm-tools --noconfirm --needed

### Configure VM Tools
#sudo systemctl enable vmtoolsd
#sudo systemctl start vmtoolsd

### Chat and Social
sudo pacman -S discord --noconfirm --needed

#sudo pacman -S  --noconfirm --needed


echo "################################################################"
echo "####                APPS INSTALLED                        ######"
echo "################################################################"
