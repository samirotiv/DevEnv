# Vim Plug
uname=$(whoami)
sudo chown -R $uname:$uname ~
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo chown -R $uname:$uname ~
