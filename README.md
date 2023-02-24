# 基于Nvchad的nvim配置

- Github: https://github.com/NvChad/NvChad
- DOC: https://nvchad.com/quickstart/install

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

```
# macOS 
brew install ripgrep

# ubuntu
sudo apt install ripgrep
```

3. Install NvChad

```
# macOS or linux
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

```

4. clone custom file

## Notice:

如何重写插件配置：
1. 在`custom/plugins/overrides.lua`里面添加要修改的配置
2. 然后在`custom/plugins/init.lua` 里面引入该配置

```
["goolord/alpha-nvim"] = {
  disable = false,
  override_options = overrides.alpha,
},
```
3. 使用`PackerSync` 更新配置

解决python缩进问题:
- python不会自动缩进: treesitter冲突，indent改成false

nvim-treesitter会出现CLI not found报错：

- 输入`:checkhealth nvim-treesitter` 

```
`tree-sitter` executable not found (parser generator, only needed for :TSInstallFromGrammar, not required for :TSInstall)
```

说明下`nvim-lspconfig`,`mason`,`null-ls`的关系：
- 整个nvim中分为lsp-client和lsp-server，要安装了lsp-client后，才能链接到lsp-server，server提供了代码补全和format等操作
- mason是基于nvim-lspconfig插件的，提供server的安装界面，null-ls是专门补全的软件，当然还有其他功能
- 为了使用代码补全和format，需要安装format的server和补全的server
- 但是mason和null-ls不能自动安装某些配置，比如我写好了要安装的语言，然后自动安装
- `mason-null`, `mason-lsp`, 两个插件可以方便我们自动安装，mason-lsp方便安装代码补全的server，而mason-null方便安装format的server

如果要使用代码补全功能，添加语言服务器的步骤如下：
1. 编辑`mason-lspconfig.lua`
2. 使用`:PackerSync`命令同步下
3. 使用`:Mason`命令自动安装

如果要使用代码格式化功能，添加语言服务器的步骤如下：
1. vi `mason-null.lua` file, 添加语言进文件中
2. vi `null-ls.lua` file, 添加format命令进文件中
3. 使用`:PackerSync`命令同步下
4. 使用`:Mason`命令自动安装

- 代码补全的server列表: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
- 代码格式化的server列表: https://github.com/jay-babu/mason-null-ls.nvim#available-null-ls-sources
- 代码格式化的命令(添加到null-ls文件中)：https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#formatting

## Bug
- [x] python format有问题
- [x] 输入`:bd`会关闭所有buffer(用leader x关闭buffer)
- [x] cmp代码提示比较烦，会自动显示档到视线，应该换成手动触发
- [x] 如何隐藏错误提示，按键才会显示, 但错误标志会有

## TODO
- [ ] 打通ssh中neovim复制问题
- [ ] add snip: https://zjp-cn.github.io/neovim0.6-blogs/nvim/luasnip/doc1.html
