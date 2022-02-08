#!/usr/bin bash
# 安装nvim，如果是mac，直接用brew install nvim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

# install nvim
UserName=$(whoami)
mkdir /User/${UserName}/.config/nvim
cp ./config/nvim/* /User/${UserName}/.config/nvim

# install jupyter
conda install -c anaconda jupyter

source ./config/jupyter/jupyter_vim.sh
source ./config/jupyter/jupyter_theme.sh
