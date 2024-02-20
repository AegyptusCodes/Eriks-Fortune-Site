#!/bin/bash

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Clone GitHub repository
git clone https://github.com/AegyptusCodes/Eriks-Fortune-Site.git
cd Eriks-Fortune-Site

# Install application dependencies
npm install

# Start your application
npm start
