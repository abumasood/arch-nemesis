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


echo "################################################################"
echo "####                Essential Tools                       ######"
echo "################################################################"

echo "##### Installing CUPs #####"
sh scripts/install-cups-v*.sh  ###>>> Need to install Brother HL-2070N printer
echo "##### Installing hblock service #####"
sh scripts/install-hblock-v*.sh
echo "##### Installing Lightdm Webkit #####"
sh scripts/install-lightdm-webkit-v*.sh
echo "##### Installing Nvidia #####"
sh scripts/install-nvidia-v*.sh
echo "##### Installing Powerline #####"
sh scripts/install-powerline-v*.sh
echo "##### Configuring swapfile #####"
sh scripts/install-swapfile-v*.sh
echo "##### Installing Firewall #####"
sh scripts/install-ufw-v*.sh  
echo "##### Installing ZSH #####"
sh scripts/install-zsh-v*.sh
echo "##### Configure system to use ALL core to Makepkg #####"
sh scripts/000-use-all-cores-makepkg-conf-v3.sh


echo "##### Cloning Github Repos #####"
if [ ! -d "$HOME/DATA" ]; then
	mkdir $HOME/DATA  
fi
cd $HOME/DATA
git clone https://github.com/abumasood/myfiles
git clone https://github.com/abumasood/mybackgrounds
echo "##### Git Clone Done #####"
echo "##### Copying bashrc-personal #####"
#cp -f ~/DATA/myfiles/bashrc/bashrc-personal ~/.bashrc-personal
#cp -f ~/DATA/mybackgrounds/wallpapers/* ~/.config/variety/Favorites/


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
sudo pacman -S gtop --noconfirm --needed
sh scripts/install-vtop-v*.sh
sh scripts/install-nemo-v*.sh
sh scripts/install-caffeine-ng-v*.sh

### System
###sudo pacman -S qt5ct --noconfirm --needed
sudo pacman -S expac --noconfirm --needed
sudo pacman -S linux-headers

### Virtualbox
sh scripts/install-virtualbox-host-v*.sh
#sudo pacman -S virtualbox-guest-modules-arch --noconfirm --needed

### VMWare Workstation
sh scripts/install-vmware-workstation-v*.sh
sudo pacman -S open-vm-tools --noconfirm --needed
sudo systemctl enable vmtoolsd
sudo systemctl start vmtoolsd

### Chat and Social
sudo pacman -S discord --noconfirm --needed

#sudo pacman -S  --noconfirm --needed

echo "################################################################"
echo "####  System Apps/Configs have been Installed.  ALL DONE!!! ####"
echo "################################################################"
