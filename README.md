# 基于Nvchad的nvim配置(v2.0)

- Github: https://github.com/NvChad/NvChad
- Doc: https://nvchad.com/docs/quickstart/install

# Install

1. Install Neovim >= 0.8.3
2. Install Nerd Font 
3. Install ripgrep

```
# macOS 
brew install ripgrep

# ubuntu
sudo apt install ripgrep
```

4. Install NvChad

```
# macOS or linux
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

```

5. clone custom file, 并放置在core的同级目录下

```
.
├── core
├── custom
└── plugins
```

# 修改配置

- 参考配置：https://github.com/NvChad/example_config
- 参考文档：https://nvchad.com/docs/config/walkthrough

-[x] 设置default
-[ ] 设置mapping
-[ ] 设置theme
-[ ] 设置dashborad
-[ ] 设置treesitter
-[ ] 设置lsp
-[ ] 设置null-ls

# 常用映射

```lua
-- 折叠
zc, fold code
zM, fold all code
zo, open fold code
zR, open all fold code
```
