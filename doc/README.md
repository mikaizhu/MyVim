# 说明：

推荐教程：
- 笨方法学vimrc脚本: https://www.w3cschool.cn/vim/9sgmpozt.html
- vim教程整理: https://github.com/vim-china/hello-vim

vim脚本学习：

- vim脚本使用：https://yianwillis.github.io/vimcdoc/doc/usr_41.html
- vim and python 对比: https://gist.github.com/yegappan/16d964a37ead0979b05e655aa036cad0

vim中文学习资源：

- [vim 缓冲区 窗口 标签等名词解释](https://zhuanlan.zhihu.com/p/96801314) 
- [插件管理 下载 删除](https://zhuanlan.zhihu.com/p/139847548) 
- [vim 中文学习网站](https://vimjc.com/) 

vim映射说明：

> 1. noremap 作用为了防止递归调用 比如我设置a b ； b c，那么递归调用后，按a就会出
> 现c
> 2. `:nnoremap <F3> :ls<CR>`按F3后就会在命令行调用ls命令，CR是回车，如果没CR
>    就不会执行，要手动回车执行
> 3. <silent> 表示不会显示当前界面的变化，map 语法如下：`[nore]map [<args>] {lhs} {rhs}
> ` 参考：https://zhuanlan.zhihu.com/p/38150203


vim tips:

- [英文vim技巧](https://vim.fandom.com/wiki/Best_Vim_Tips#Basic_use) 
- [vim 快捷键查询](https://github.com/skywind3000/awesome-cheatsheets/blob/master/editors/vim.txt) 



现在使用neovim的比较多，而且里面的调用方式和vim差不多，只是函数的接口有变化，所以还是建议学习nvim

- vim的插件安装建议使用vim plug，不建议使用vundle
- 代码补全不建议使用ycm，建议用coc

**常用命令记忆**：

vim 中如果要实现下面序列，则要先构造出很多0， 然后control v选定，按g然后
control a就OK

```
1
2
3
4
5
```


gi：从普通模式，进入到最近的插入光标位置

control + ]:从insert 模式退回到普通模式，代替esc

control + w: hjkl 分屏模式下窗口切换

vim中有挺多介词，可以先尝试使用下面两个命令：

- ct)
- yt)
- ci)
- yi)
- di)
- dt)
- fi)
- ft)

单词跳转命令：

- e：跳转到单词结尾
- w：跳转到单词开头
- b:单词往前跳转
- W，E都是跳转，只不过是以空白为分隔

单词查找命令：

- f + char，比如在这一行使用f g 然后就会跳转到g开头的单词，使用,和；来查找上一
  个和下一个以g开头的单词

- t + char：跳转到这个字符的前一个字符位置, till 直到的意思

查找和删除命令结合：

this is vim:this is a test

假如要删除:前的单词，使用命令df:或者cf:但是注意光标一定要在:前面


删除和替换：

- c:change s:substitude r:replace

c命令和删除差不多，删除后进入编辑模式

测试：
“this is  a test”: cw,修改一个单词，但光标要在单词前面，如果光标在单词中间，则
用ciw，表示change in words

修改引号里面的单词

<change in words>:ci>,然后就可以修改括号里面的内容，并进入编辑模式

- C, S, R注意和小写的区别。C会删除后面所有字符，并进入到插入模式，S会删除整行
  ，并进入插入模式。R不会删除，只是会将后面的字符不断进行替换。

- 如果要删除引号里面的字符，或者括号里面的字符，可以尝试`df(`，

配置文件：

- noremap:按键映射，可以重新映射键盘按键

```
birenao n h "按n键相当于按h"
```

- map:命令与按键的映射
```
map S :w<CR> "将S映射为：w回车，即保存"
```

- set:表示设置属性，将某个属性开启或者关闭

```
set number "将行号进行开启"
```


vision 模式的作用：

- 可视行模式

- 可视块模式:control + v 进入可视块模式，假如现在要使用可视块模式在前面添加内
  容,选中你需要的行，然后I进入输入模式，输入test文字后，被可视化选中的段落前面
  ，都会添加上字符。

test:this is test:hello
test:this is test:hello
test:this is test:hello

- 可视的normal模式:假如我要在下面四行前面都加上某些字符，使用方式为按冒号：+
  normal即可进入可视的普通模式，然后输入你要的指令，完整指令如下：`:normal
  Ithis is test:`, I表示在最前面插入，后面为插入的字符

this is test:hello 
this is test:hello
this is test:hello
this is test:hello

# 学习文档：

- [coc vim：vim的补全，里面也有很多插件](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)
- [vim 学习文档](https://github.com/wsdjeg/vim-galore-zh_cn)
- [coc nvim](https://github.com/neoclide/coc.nvim)
- [vim视频教程](https://www.imooc.com/learn/1129)

# 教程

vim && markdown 教程

插件安装：
- markdown previe

## vim的插件使用 

- 插件管理：vim plug 

第一个插件：vim-startify，可以打开最近打开的文件

- 寻找插件：1. 谷歌浏览器 2. vim awesome 3. 从别人的config文件中寻找

- 配置目录nerdtree

安装插件很简单,注意：该插件一般在文件的根目录下使用

按键映射：

```
"这里将tt按键设置为打开nerd tree
nnoremap tt :NERDTree<CR>
"因为要切换窗口，nerdtree默认使用control w，这里与tmux对应，c b h 左切换
nnoremap <C-b> <C-w>
```

nerdtree 中的文件控制：可以直接在nerdtree中新建文件，在目录中使用ma命令，创建
文件。参考：https://blog.csdn.net/qq_38883889/article/details/107014964


在目录窗口，输入问号，可以打开操作说明

如果想要文件模糊搜索，可以尝试下ctrlp插件

- 配置轻量的python

使用插件python mode: https://github.com/python-mode/python-mode

注意详细使用请看官网

```
" python mode
let g:pymode_python = 'python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_options_max_line_length = 120
```

- 配置markdown

使用参考：https://sspai.com/post/60305
插件官网：https://github.com/iamcco/markdown-preview.nvim

# vim标签页

即vim可以同时打开很多个文件， 即 Tab page

如果是直接使用vi file1 file2 这样打开多个文件，那么只能使用下面方式切换

```
:bn
:bp
:b2
```

1. 建立新的标签页或者打开新的文件

```
:tabnew filename
:tabe filename
:tabedit filename
```

2. 切换标签页

参考：https://vimjc.com/vim-tabpage.html

在普通模式下：

```
gt
gT
```

在命令模式下：

```
:tabnext
:tabn
:tabprevious
:tabp
```

3. 关闭标签页

```
:tabclose
# 下面命令只保留当前的标签页，关闭其他标签页
:tabo
:tabonly
```
# vim替换命令

全局替换：
```
:%s/old/new/g
:%s/old/new
```

几行替换：
```
# 1-5行进行替换
:1,5s/old/new
```


# 删除命令

```
:1,5d
```

## vim<buffer>作用

阅读：https://www.w3cschool.cn/vim/9sgmpozt.html

```
vi foo bar // 这样两个文件在同一缓存区
:ls // 使用ls查看所有缓存区，左边有数字，然后旁边是缓存区名字，如果没有说明在
同一缓存区

vi foo
:e bar // 这样打开的文件，两个文件不在同一缓存区, ls 可以发现两个名字不一样

参考：https://vim.fandom.com/wiki/Buffers
```

```
:nnoremap          <leader>d dd
:nnoremap <buffer> <leader>x dd
```

> leader 键如果不设置buffer的话，对所有缓存区都有用，设置了buffer，则只对当前
> 文件有效

## vim自动命令与事件

阅读：https://www.w3cschool.cn/vim/oc2t6ozt.html

```
" :autocmd BufNewFile * :write
"         ^          ^ ^
"         |          | |
"         |          | 要执行的命令
"         |          |
"         |          用于事件过滤的“模式（pattern, 如果是*.txt则只对txt文件有效”
"         |
"         要监听的“事件”
" bufwritePre会检测是否有新的缓存区出现，如果有则执行后面命令
" autocmd BufWritePre *.html :normal gg=G
```

```
# 多个事件

你可以创建一个绑定_多个_事件的自动命令，这些事件使用逗号分隔开。执行下面的命令：
:autocmd BufWritePre,BufRead *.html :normal gg=G

# filetype事件
最有用的事件是FileType事件。这个事件会在Vim设置一个缓冲区的filetype的时候触发。
让我们针对不同文件类型设置一些有用的映射。运行命令：
:autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
:autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>

filetype会检测你打开的文件类型，然后执行后面的命令
```

## 自动组命令

即当某事件发生的时候，会自动执行的命令, 为了方便管理，将vim中的所有自动执行的
命令，都放到自动组中 格式如下：

```
augroup mygroup
  au!
  autocmd BufWrite * :echom "Foo"
  autocmd BufWrite * :echom "Bar"
augroup END
```

如果不使用au！那么如果每次将缓冲区的文件写入文件中的时候，vim都会再次读取该文
件。

> 比如：我现在使用上面autocmd配置，然后编辑一个文件，每输入一些东西就保存，每次
> 保存就是将缓存区的数据存入到文件中，每次存入就会调用autocmd bufwrite这个事件。
> vim每次调用，不会自动覆盖掉上次的autocmd，因此每次保存，vim都会读取autocmd就会不断叠加，降低效率


## vim onoremap

vim 的思想：操作 + 移动，然后光标会到移动的位置，如下面命令
```
d /return<CR>
```
vim 会将当前位置。删到return位置，光标会停在return

如果想自己定义移动方式，vim中有操作 c，y，d, 后面跟移动方式
```
:onoremap in( :<c-u>normal! f(vi(<cr>
```
输入din(, vim就会将当前行()中的内容删掉, in( 是自己定义的移动方式宏 后面是宏拓
展，也就是自己定义的移动方式

- F): 向后移动到最近的)字符。
- vi(: 进入可视模式选择括号内的所有内容。
- normal! 
- c-u的作用

```
normal: 命令的后面会跟着一串字符，无论这些字符表示什么含义，:normal命令都会执行它们，就像是在常用模式下敲击这些字符一样。
:normal gg
normal命令简单地接受一串键值并当作是在normal模式下输入的。就是那么简单！
:normal! gg 是防止递归映射

Vim会将光标跳转到文件的顶部。

execute命令后面会跟着一个Vim脚本字符串（以后会深究它的细节），然后把这个字符串当作一个命令执行。执行下面的命令：
:execute "write"
Vim会写文件，就像你已经输入了:write<cr>一样。
```

