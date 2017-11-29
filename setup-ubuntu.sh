# Initial update
apt update && apt upgrade -y
apt-get install software-properties-common -y

# Add Neo Repo
add-apt-repository ppa:neovim-ppa/stable -y
apt-get update

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_8.x -o /tmp/nodesource_setup.sh
bash /tmp/nodesource_setup.sh

# Basics
apt-get install tmux git tig -y
apt-get install neovim -y

# Python Prerequisites
apt-get install python-dev python-pip python3-dev python3-pip -y

# Node & Typescript
apt-get install nodejs -y
npm install -g typescript

