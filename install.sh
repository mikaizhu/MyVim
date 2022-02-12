#!/usr/bin bash
mv ~/.config/nvim ~/.config/nvimbackup
mkdir -p ./config/nvim && cp -r ./config/nvim/* ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim +PackerSync
