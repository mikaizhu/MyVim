## ⚙Install

💡说明: 基于Nvchad的nvim配置(v2.0), 安装流程如下

1. Install Neovim >= 0.8.3
2. Install Nerd Font 
3. Install ripgrep, npm, node

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

## ⌨️常常用映射

```lua
-- 折叠
zc, fold code
zM, fold all code
zo, open fold code
zR, open all fold code
```
## ⚠️ 注意事项

1. 代码补全：需要配置lspconfig，找到相应的server
2. 代码颜色：需要配置treesitter
3. 代码format：需要配置null-ls和mason

❓疑问：有点没明白`mason`,`lspconfig`,`null-ls`三者之间的关系，三者都有安装server和formatter，为什么需要配置三遍呢？

## 📒TODO
- [ ] 添加一些snippets，可以参考配置1
- [ ] 添加debug的插件，如dap
- [ ] 添加其他的插件

## 🔍参考
1. 参考配置：https://gitee.com/mrw954/custom
2. 参考配置：https://github.com/NvChad/example_config
3. 参考文档：https://nvchad.com/docs/config/walkthrough
