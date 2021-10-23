# MyVim配置说明

```
sudo apt install zsh
sudo apt install nvim
```

## nvim配置

- 先安装nvim
- 先下载nvim中所有的文件

## jupyter & vim 配置

- 直接运行main.sh文件

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

我希望使用的功能：

- vim能编辑所有程序，能搜索文件(fzf)
- vim中能调用命令行(floaterm)
- vim中能debug(vim spector)
- vim中各种函数可以进行文件跳转(TODO)

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

## 复制粘贴插件

有时候需要将服务器上的文本复制粘贴到本地，对于Mac OS最好的插件就是osyank

- osyank, 服务器上复制，Mac本地可以粘贴: https://github.com/ojroques/vim-oscyank

## vim字体插件安装

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

## 主题安装

主题推荐：https://github.com/morhetz/gruvbox/wiki/Installation

```
vi init.vim
Plug 'morhetz/gruvbox'
autocmd vimenter * ++nested colorscheme gruvbox
```

# TODO

- [ ] vim terminal config
- [ ] vim code language config
- [ ] vim code complete config
- [ ] other plug

# 常用网站

vim插件安装网站：https://vimawesome.com/

# vim 插件安装


# fzf安装和常用命令说明

可以在vim中使用fzf，也可以在terminal中使用fzf

```
fzf ** + tab可以进行模糊搜索
cd ** + tab
vi ** + tab
```

使用方式：首先切换到项目目录下，然后使用fzf

常用的命令：

```
// 退出只需要 esc + q
:Rg 模糊搜索，可以查看文件内容
```

# 命令行floaterm调用说明

# vimspector安装和常用命令说明

网址：https://github.com/puremourning/vimspector#quick-start

安装：Plugin 'puremourning/vimspector'

插件位置：`/Users/.cache`

> `/Users/zwl/.cache/nvim/plugged/vimspector` 

安装需要debug的语言: `./install_gadget.py --enable-cpp --enable-python
--enable-bash` 

或者直接`--enable-all` 安装所有语言的依赖

**开始debug**: 

如果要debug你的程序:
- 应该告诉vimspector你的debug adapter是什么
- 如何connect你的应用

首先在项目根目录下创建一个`.vimspector.json`, 当程序要开始debug的时候，会从当
前目录不断向父目录寻找这个文件配置并使用


# vimtex

# 推荐文章

- 比较好的vim配置教程：https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/#how-do-i-change-the-font
