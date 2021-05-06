#!/bin/bash
# Run Me
# wget -O - https://raw.githubusercontent.com/zl0n/digi/main/start_docker.sh|bash
apt update
apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common mc git ncdu htop atop tmux
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt update
apt install -y docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.29.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
