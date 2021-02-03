#!/bin/bash

ROOT=$1
OGPASS=$2
USERNAME=$3
PASS=$4

echo "Welcome to your new install. Upgrading everything to latest..."
sudo ./upgrade.sh
echo "Upgrade complete. Installing your programs..."
sudo ./install-programs.sh
echo "Your programs are installed. Installing zsh for $ROOT user"
./install-zsh.sh $ROOT $OGPASS
echo "Your programs are installed. Now creating user $USERNAME"
./create-user $USERNAME $PASS
echo "User hassan is created. Installing zsh for $USERNAME"
./install-zsh.sh $USERNAME $PASS
su $USERNAME -c "./install_zsh.sh $USERNAME $PASS"
# ./mount_harddrive.sh
# ./ssh_setup.sh
# ./change_root_pass


 echo "set up complete"