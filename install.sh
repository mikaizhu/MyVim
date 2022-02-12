#!/usr/bin bash
mv ~/.config/nvim ~/.config/nvimbackup
cp -r ./config/nvim/* ~/.config/nvim
cp -r ./config/packer.nvim/ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim +PackerSync
