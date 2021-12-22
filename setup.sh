#!/bin/bash
# 余計なディレクトリを削除
rm -rf ~/B* ~/D* ~/M* ~/P* ~/T* ~/V*

# swapを無効化
sudo swapoff --all
sudo apt remove dphys-swapfile -y

# DRM関係
sudo apt install libwidevinecdm0
wget https://gist.githubusercontent.com/lemariva/0eb4ff4e847700627a5ebb71711c31bf/raw/94314cb2d3c7da7518b220b2785f7bbd69671394/widevine-flash_armhf.sh 
sudo bash widevine-flash_armhf.sh

# 趣味
sudo apt install -y zsh tmux neovim
chsh -s /bin/zsh

# zsh,tmux設定
cp ./lib/.* ~/
sudo cp ./lib/.* /root/

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# パッケージを最新化
#sudo apt update
#sudo apt full-upgrade -y

# chrome操作はシェルからやるのは面倒なのでechoでごまかす
echo 'run Chromium(DRM), and add "https://www.youtube.com" to "Sites cannot use cookie" on settings.'
