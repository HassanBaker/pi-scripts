#!/bin/bash

USERNAME=$1
PASSWORD=$2

sudo apt-get install zsh -y
(echo $PASSWORD;) | sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
(echo $PASSWORD;) | chsh -s /bin/zsh
sudo apt install fonts-powerline
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
mv ~/.zshrc ~/.zshrc.old
cat zshrc.tmpl | sed "s#{{ OMZSHPATH }}#/home/$USERNAME/.oh-my-zsh#g" > ~/.zshrc
source ~/.zshrc