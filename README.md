# MyVim配置说明

```
sudo apt install zsh
sudo apt install nvim
```

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
- learn vim in smart way: https://github.com/iggredible/Learn-Vim
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

## vim terminal config | floaterm

- 使用的插件为：https://github.com/voldikss/vim-floaterm

使用配置如下：

```
" floaterm config
" 设置shell不是浮动，而是右边option：split vsplit float
let g:floaterm_wintype='vsplit'
" 设置为一半
let g:floaterm_height=0.5
let g:floaterm_width=0.5
"让terminal打开默认的是当前项目的目录下"
let g:floaterm_borderchars='.root'

nnoremap <Leader>fn :FloatermNew
nnoremap <Leader>sh :FloatermShow<CR>
nnoremap <Leader>fk :FloatermKill<CR>
nnoremap <Leader>fs :FloatermSend
vnoremap <Leader>fs :FloatermSend<CR>

nnoremap <Leader>ft :FloatermToggle<CR>
"进入命令行模式后，要用tnoremap进行映射
tnoremap <silent> <C-[> <C-\><C-n>:FloatermToggle<CR>
" 从termial切换窗口, 有时候会和tmux按键冲突，可以替换成其他的
tnoremap <silent> <C-b>h <C-\><C-n><C-w>h
nnoremap <silent> <C-b>l <C-w>l
```

比较有用的技巧：按V选中文本后，然后输入<Leader>fs, 就会将选中内容输入到termial
中

如：

```
;fn ipython
Vjj
;fs
```

# Ranger & telescope安装

Ranger是用在命令行中的: https://github.com/ranger/ranger
Telescope是在vim中运行的：https://github.com/nvim-telescope/telescope.nvim

安装：

```
# 两种安装方式
sudo apt install ranger
pip install ranger-fm
```

如果是用的zsh

```
vi ~/.zshenv or vi ~/.bash_profile
alias ranger=rg
```

ranger 会自动读取你的vim or neovim配置, 通过h j k l来移动文件目录, h l 切换上
下级目录

让ranger使用nvim打开文件
```
vi ~/.zshenv or vi ~/.bash_profile
export VISUAL=nvim
export PAGER=more
```

# CoC.nvim config

nodejs: https://nodejs.org/en/download/
coc.nvim: https://github.com/neoclide/coc.nvim

1. 首先要安装nodejs

> 可以使用源码安装，如果服务器没有网，可以本地下载，然后上传到服务器进行安装,
> 注意检查版本`nodejs -v`，如果版本不对，下载最新版本，使用whereis nodejs, 然
> 后sudo cp nodejs/bin/node /usr/bin


# TODO

- [x] vim terminal config
- [x] vim teloscop
- [x] vim fzf
- [x] vim coc nvim 
- [x] vim code language config eg: python cpp
- [x] vim code complete config
- [ ] vim markdown plugin

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

