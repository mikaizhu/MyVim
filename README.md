# 基于Nvchad的nvim配置(v2)

- Github: https://github.com/NvChad/NvChad
- Doc: https://nvchad.com/docs/quickstart/install

# Install

1. Install Neovim
2. Install Nerd Font 
3. Install ripgrep

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

4. clone custom file, 并放置在core的同级目录下

```
.
├── core
├── custom
└── plugins
```

# 修改配置

参考配置：https://github.com/NvChad/example_config
参考文档：https://nvchad.com/docs/config/walkthrough


# 常用映射

```lua
-- 折叠
zc, fold code
zM, fold all code
zo, open fold code
zR, open all fold code
```
