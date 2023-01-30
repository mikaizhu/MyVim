# 基于Nvchad的nvim配置

- Github: https://github.com/NvChad/NvChad
- doc: https://nvchad.com/config/Walkthrough

## Install

1. Install Neovim:

可以使用appiamge安装neovim：
```
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
cp nvim.appimage /usr/local/bin/
```
add path to `.zshrc` or `.bashrc`

OR:
Neovim 0.8.0, if your distro/OS doesn't have it then try neovim version manager.
- :https://github.com/MordechaiHadad/bob

Use a Nerd Font in your terminal emulator.

Make sure to delete this folder ~/.local/share/nvim on Linux/macOS or ~\AppData\Local\nvim and ~\AppData\Local\nvim-data on Windows.

2. Install Nerd Font and ripgrep

3. Install NvChad

4. clone custom file

注意:
- python不会自动缩进: treesitter冲突，indent改成false

## TODO
- [] add snip: https://zjp-cn.github.io/neovim0.6-blogs/nvim/luasnip/doc1.html
- [] python format有问题
