#!/usr/bin/env bash
mv ~/.config/nvim ~/.config/NVIM.BAK
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cp -r custom ~/.config/nvim/lua
nvim +PackerSync
