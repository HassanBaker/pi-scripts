#!/bin/bash

USERNAME=$1
PASSWORD=$2

sudo useradd -m $USERNAME
(echo $PASSWORD; echo $PASSWORD) | sudo passwd $USERNAME
sudo usermod -a -G sudo $USERNAME