# txt.vim

Forked from [flniu/txt.vim](https://github.com/flniu/txt.vim)

Special thanks to [flniu](https://github.com/flniu)

Make Vim more usable for viewing and editing plain text

> Version: 0.2.2

## Pros

* The syntax file colors numbers, punctuation marks, links, quoted or bracketed text, Shell/C/C++ style comments, list items, TODOs/ERRORs, etc.
* The ftplugin file includes some usable settings when viewing and editing text file.
* The ftdetect file auto-detects text file according to file extension name.
* Support CJK characters.

## Fix log

0.2.1

* Added special symbols such as "├、└、─" to highlight
* Highlights caused by unclosed quotes and parentheses will end at the end of the line

0.2.2

* Now the dash can be highlighted correctly
* Fixed an error that resulted in incorrect matching range for paired symbols

## Installation

### [pathogen][]

```sh
cd ~/.vim/bundle
git clone https://github.com/ACOTSAE/txt.vim.git
```

### [vim-plug][]

```vim
" Add this line in vim-plug section:
Plug 'ACOTSAE/txt.vim.git'
" Then run commands in vim:
:so %
:PlugInstall
```

## Bug

* Due to syntax conflicts, highlighting of Em dash outside quotation marks will be different from Punctuation
* Does not support recursive highlighting of paired punctuation marks such as quotation marks (I don't know how to write code)


## Compatibility

After the [Rainbow](https://github.com/luochen1990/rainbow.git) plugin is enabled, it will cause highlighting within parentheses to become invalid

----

# txt.vim 中文说明

让Vim更加便于查看和编辑纯文本

> 版本: 0.2.2

## 功能介绍

* syntax文件分色显示数字、标点符号、链接、引号或括号中的文字、Shell/C/C++风格的注释、列表项、TODOs/ERRORs、等等。
* ftplugin文件包含一些查看和编辑纯文本文件的设置。
* ftdetect文件根据扩展名自动识别纯文本文件。
* 支持CJK字符集。

## 更新日志

0.2.1

* 添加了形如“├、└、─”的制表符的高亮
* 未闭合的引号和括号导致的高亮将会于行尾结束

0.2.2

* 现在破折号可以正确高亮了
* 修复了一个错误，会导致成对符号匹配范围错误

## 安装

### [pathogen][]

```sh
cd ~/.vim/bundle
git clone https://github.com/ACOTSAE/txt.vim.git
```

### [vim-plug][]

```vim
" 在vim-plug配置节中添加这一行：
Plug 'ACOTSAE/txt.vim.git'
" 然后在vim中执行：
:so %
:PlugInstall
```

## 配置

```vim
"当行数过多时不显示行号，上限由g:line_number_limit定义
let g:disable_large_line_number = 0
"行数上限
let g:line_number_limit = 1000
"是否启用折行
let g:txt_enble_wrap = 1
"是否重定义折叠方式
let g:define_fold = 0
"OK检查
"按键映射为<leader><space>
let g:check_ok = 0
```

## 缺陷

* ~~由于语法冲突，在引号外的破折号的高亮将不同于标点符号~~

* 不支持引号等成对标点符号的递归高亮（不会写）

## 兼容性

* [Rainbaw](https://github.com/luochen1990/rainbow.git)插件启用后会到导致括号内高亮失效

:dog:

## TODO

- [x] 可配置选项
- [ ] 迁移到text文件格式
- [ ] 更高级的括号匹配

- 15
- 15
- 55


[pathogen]:         https://github.com/tpope/vim-pathogen
[vim-plug]:         https://github.com/junegunn/vim-plug/
