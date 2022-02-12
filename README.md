# MyVim配置说明

**requirements**:

- nvim >= 0.6 
- nerd founts
- zsh
- ohmyzsh

**use this config**:

```
git clone https://github.com/mikaizhu/MyVim.git && cd MyVim && sh install.sh
```
**recomments**:

- [AstroVim](https://github.com/kabinspace/AstroVim)
- [learn-neovim-lua[中文]](https://github.com/nshen/learn-neovim-lua) 
- [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch) 
- [awesome neovim[find plugin]](https://github.com/rockerBOO/awesome-neovim) 

**basic learning**:
- learn lua from [here](https://nvchad.github.io/getting-started/learn-lua)
- learn vimscript from [here](https://nvchad.github.io/getting-started/post-install)

## 安装nvim

1. linux 安装最新版本
```
# 安装最新的nvim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt install nvim
```

2. mac安装最新版本

```
brew update
brew install neovim # or brew upgrade neovim
```

## 安装nerd fonts

下载一种终端显示字体，这里可以参考终端介绍：https://segmentfault.com/a/1190000016129862

> 终端的作用是接收键盘的输入，将输入丢给shell，shell与计算机内核进行通信，并将
> 结果返回给终端，终端再解析这些结果，然后输出到显示器上。所以字体是下载到
> terminal中，shel通过软件，将结果输出给terminal然后显示这些字体.

1. nerd fonts 下载地址：https://www.nerdfonts.com/font-downloads

2. 下载好后在terminal中设置好下载的字体.

## 安装zsh

1. 安装zsh

```
brew install zsh
```

2. 安装ohmyzsh

```
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

sh install.sh
```

## 配置nvim

1. 手动安装模块

```
# 将下载好的GitHub模块放到路径: /home/zwl/.local/share/nvim/site/pack/packer/start
```

> 说明: lazy loading 指的是，只有某些事件触发，才会调用插件，这类插件放置在opt目录下，start目录下存放着当nvim启动就立刻加载的插件

### telescope

1. 需要

mac:
```
brew install ripgrep
```

ubuntu:
```
apt install ripgrep
```

TODO:
1. 说明下各个模块需要注意的地方
2. 说明下整个文件的结构

# 推荐文章

配置:
- https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/#how-do-i-change-the-font
- https://github.com/jdhao/nvim-config
- https://github.com/theniceboy/nvim
- https://github.com/SpaceVim/SpaceVim
- https://github.com/youngyangyang04/PowerVim

教程:
- vim脚本编写：https://www.w3cschool.cn/vim/21zj8ozt.html
- vim入门到精通：https://github.com/wsdjeg/vim-galore-zh_cn
- learn vim in smart way([中文翻译版](https://github.com/wsdjeg/Learn-Vim_zh_cn)): https://github.com/iggredible/Learn-Vim
- vim中文手册：https://yianwillis.github.io/vimcdoc/doc/help.html

# 常用名词介绍

参考：https://zhuanlan.zhihu.com/p/96801314

缓存区：Buffer 是 vim 打开文件的时候创建的一个缓冲区，用来存储打开的文件 。 使用 vim 每打开一个文件就会创建一个 Buffer 。

窗口：窗口是用来展示 Buffer 的信息的，vim 之所以有 Buffer 的概念，大概就是窗口显示文件内容的时候，可以快速显示出来。

标签页：Tab 可以想象成浏览器中的标签页，不同之处是 vim 中的 一个Tab 可以有很多个窗口，每个窗口用来展示文件的内容信息。

寄存器：顾名思义，一个存东西的机器, 当我们使用 y 复制内容的时候，vim 默认把内容寄存到一个无名寄存器，当使用黏贴功能 p 的时候，就会默认从无名寄存器中取出内容。

```
查看寄存器内容:reg

ma 记录标签
Ma 记录全局标签，可以多个文件跳转
```

## jupyter & vim 配置

- 直接运行install.sh文件

## nvim 0 to 1

开始配置vim：

```
" 创建文件
mkdir $HOME/.config/nvim

cd $HOME/.config/nvim
nvim init.vim
```

每次启动nvim，都会自动调用init.vim中的配置, 为了保证文档的简洁性，可以将一些功
能写在init文件之外。比如我想将快速移动配置，单独写成一个fast-move.vim

然后在init文件中写入：

```
source $HOME/.config/nvim/fast-move.vim
```

## 插件安装方法

使用vim plug进行插件管理：

```
# 新建文件夹，然后把github上的插件仓库都放到这个文件夹目录下
mkdir $HOME/.config/nvim/plugged
```

在init.vim中，添加下面命令

```
" plug 
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ojroques/vim-oscyank'
call plug#end()
```

**在线安装插件**: 

退出vim，然后重启vi，输入`:PlugInstall` 插件就会在线安装

**离线安装插件**: 

插件的安装实际还是使用git从网上clone到本地，如果服务器网不好，只能离线安装插件

```
1. 本地clone插件仓库
2. 将插件仓库传到服务器上，注意是plug目录下，使用scp命令
3. 同样在init.vim的plug begin中，输入要clone的plug
4. 重启vim，输入:PlugInstall，插件会检查是否clone下来了插件，然后链接进vim，否
   则是不能使用插件命令的
```

## oscyank

有时候需要将服务器上的文本复制粘贴到本地，对于Mac OS最好的插件就是osyank

- oscyank, 服务器上复制，Mac本地可以粘贴: https://github.com/ojroques/vim-oscyank

## nerd fonts

推荐字体Hack Nerd font：https://github.com/ryanoasis/vim-devicons

下载方式：

```
cd ~/.config/nvim && mkdir patched-fonts
cd patched-fonts
git init
git remote add origin https://github.com/ryanoasis/nerd-fonts
git config core.sparsecheckout true
echo "Hack" >> .git/info/sparse-checkout
git pull --depth 1 origin master 
cd ..
chmod +x install.sh
./install.sh Hack
```

同时本地也要进行同样设置，如果服务器安装了这个字体，但是本地iterm2没有安装，还
是不能显示.

如果是在服务器上操作完，本地操作如上
