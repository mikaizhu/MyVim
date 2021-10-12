# vim table mode 使用教程

vim table 是用在vim markdown中的

## 安装

```
vi init.vim

Plug 'dhruvasagar/vim-table-mode'

:PlugInstall

" 将下面复制到init.vim 中
inoremap ,t <Esc>:TableModeToggle<CR>
```

## 使用方式

在insert模式下

输入:

```
,t
```

然后就进入了vim table mode模式

再输入

```
,t
```

退出vim table mode

```
输入 |  分隔

输入 || 有分割线
```
