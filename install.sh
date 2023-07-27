#!/bin/bash

## WIP & Untested

# HOMEBREW
echo "-----INSTALLING BREW PACKAGES-----"
brew install \
    bitwarden \
    brave-browser \
    firefox \
    iterm2 \
    vscodium \
    hugo \
    mpv \
    neofetch \
    newsboat \
    powerlevel10k \
    ranger \
    stow \

# Meslo Fonts
echo "installing meslo fonts..."
sudo mkdir /usr/share/fonts/meslolgs-nf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
sudo mv MesloLGS* /usr/share/fonts/meslolgs-nf    

# Stow Dotfiles
echo "-----SYMBOLICALLY LINK DOTFILES-----"
stow .

# Other apps
echo "Install Script Complete!"
echo marktext
echo onlyoffice

#git
echo "Git Creds:"
echo "git config --global user.name"
echo "git config --global user.email"
echo "git config --global credential.helper store"
echo "git push or pull"