#!/usr/bin/env bash

# update system
yes | sudo pacman -Syu

# install yay
yes | sudo pacman yay --noconfirm

# colored cat output with ccat 
yay -S ccat

# Install oh-my-zsh and packages
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yes | sudo pacman -S zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting --noconfirm

# install visual features on terminal
yes | pacman -S screenfetch lolcat speedtest-cli lsd powerline powerline-common powerline-fonts --noconfirm
echo "screenfetch | lolcat -F 199919 -a -t -s 5000" >> ~/.zshrc

# install gcc and other build
yes | sudo pacman -S make gcc gcc-libs coreutils automake m4 p7zip patch ruby go fakeroot xclip wine axel tar unzip unrar--noconfirm

# remove packages
sudo pacman -Rc snapd --noconfirm

# Update pip manager
pip install --upgrade pip

# Install ipython and HTTPIE to make REQUEST, GET, POST
yes | pacman -S ipython --noconfirm
yes | pacman -S httpie --noconfirm

# Python Module for extract urls
pip install urlextract # https://pypi.org/project/urlextract/
pip install virtualenv # for virtual enviroments

# Install neovim and Bundle Config Space-Vim
yes | sudo pacman -S neovim --noconfirm

curl -sLf https://spacevim.org/install.sh | bash

# Install Zoom
wget https://us02web.zoom.us/client/latest/zoom_x86_64.pkg.tar.xz
sudo pacman -U zoom_x86_64.pkg.tar.xz --noconfirm

# NVM version manager for node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc

# Extend spell checking
yes | sudo pacman -S aspell-en libmythes mythes-en languagetool --noconfirm

# Install virtualbox 

yes | sudo pacman install virtualbox $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-virtualbox-host-modules"}' ORS=' ')
sudo gpasswd -a $USER vboxusers
sudo vboxreload

# Install docker 

yes | sudo pacman -S docker --noconfirm 

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
systemctl start docker.service
systemctl enable docker


# Install virtualbox 
#yes | sudo pacman install virtualbox $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-virtualbox-host-modules"}' ORS=' ') --noconfirm
#sudo gpasswd -a $USER vboxusers
#sudo vboxreload

