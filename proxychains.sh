sudo apt install make gcc -y
git clone https://github.com/rofl0r/proxychains-ng --depth 1 ~/git/proxychains-ng
cd ~/git/proxychains-ng
./configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
sudo make install-config
