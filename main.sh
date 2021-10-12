#!/usr/bin bash

# install nvim
UserName=$(whoami)
mkdir /User/${UserName}/nvim
cp ./config/nvim/* /User/${UserName}/nvim

# install jupyter
conda install -c anaconda jupyter

source ./config/jupyter/jupyter_vim.sh
source ./config/jupyter/jupyter_theme.sh
