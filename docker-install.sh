#!/bin/bash
# A bash script to install docker in linux

#Update, upgrade, clean apt repository
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean

#Install git
sudo apt-get install -y git

#Install required libraries for docker
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

#Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add docker apt repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Update apt repositories
sudo apt-get update

#Install docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#Run hello-world to verify install
sudo docker run hello-world
