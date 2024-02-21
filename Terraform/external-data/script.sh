#!/bin/bash
sudo yum update -y
sudo yum install git -y
sudo yum install npm -y
cd /home/ec2-user
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
git clone https://github.com/AegyptusCodes/Eriks-Fortune-Site.git
cd Eriks-Fortune-Site/Fortune-Site
npm install
npm start