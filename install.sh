#!/usr/bin bash
# 安装nvim，如果是mac，直接用brew install nvim
#sudo add-apt-repository ppa:neovim-ppa/stable
#sudo apt-get update
#sudo apt-get install neovim

# install nvim config
mkdir -r ~/.config/nvim
cp -r ./config/nvim/* ~/.config/nvim
unzip packer.nvim.zip && rm packer.nvim.zip
cp -r ./config/packer.nvim/ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim +PackerSync

# install jupyter
#conda install -c anaconda jupyter
#
#source ./config/jupyter/jupyter_vim.sh
#source ./config/jupyter/jupyter_theme.sh
