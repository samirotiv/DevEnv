# Initial update
sudo apt update && sudo apt upgrade -y
sudo apt-get install software-properties-common -y

# Add Neo Repo
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update

# Install NodeJS
sudo curl -sL https://deb.nodesource.com/setup_8.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh

# Basics
sudo apt-get install tmux git tig -y
sudo apt-get install neovim -y

# Python Prerequisites
sudo apt-get install python-dev python-pip python3-dev python3-pip -y

# Node & Typescript
sudo apt-get install nodejs -y
sudo npm install -g typescript

