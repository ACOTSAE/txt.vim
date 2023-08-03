# txt.vim

Forked from [flniu/txt.vim](github.com/flniu/txt.vim)

Make Vim more usable for viewing and editing plain text

> Version: 0.2.1

## Pros

* The syntax file colors numbers, punctuation marks, links, quoted or bracketed text, Shell/C/C++ style comments, list items, TODOs/ERRORs, etc.
* The ftplugin file includes some usable settings when viewing and editing text file.
* The ftdetect file auto-detects text file according to file extension name.
* Support CJK characters.

## Fix log

* Added special symbols such as "├、└、─" to highlight
* Highlights caused by unclosed quotes and parentheses will end at the end of the line

## Installation

## [pathogen][]

```sh
cd ~/.vim/bundle
git clone https://github.com/ACOTSAE/txt.vim.git
```

## [vim-plug][]

```vim
" Add this line in vim-plug section:
Plug 'flniu/txt.vim'
" Then run commands in vim:
:so %
:PlugInstall
```

## Bug

* Due to syntax conflicts, highlighting of Em dash outside quotation marks will be different from Punctuation

## Compatibility

After the [Rainbow](github.com/luochen1990/rainbow.git) plugin is enabled, it will cause highlighting within parentheses to become invalid

----

# txt.vim 中文说明

让Vim更加便于查看和编辑纯文本

> 版本: 0.2.1

## 功能介绍

* syntax文件分色显示数字、标点符号、链接、引号或括号中的文字、Shell/C/C++风格的注释、列表项、TODOs/ERRORs、等等。
* ftplugin文件包含一些查看和编辑纯文本文件的设置。
* ftdetect文件根据扩展名自动识别纯文本文件。
* 支持CJK字符集。

## 更新日志

* 添加了形如“├、└、─”的制表符的高亮
* 未闭合的引号和括号导致的高亮将会于行尾结束

## 安装方法

### [pathogen][]

```sh
cd ~/.vim/bundle
git clone https://github.com/ACOTSAE/txt.vim.git
```

### [vim-plug][]

```vim
" 在vim-plug配置节中添加这一行：
Plug 'flniu/txt.vim'
" 然后在vim中执行：
:so %
:PlugInstall
```

## 缺陷

* 由于语法冲突，在引号外的破折号的高亮将不同于标点符号

## 兼容性

* [Rainbaw](github.com/luochen1990/rainbow.git)插件启用后会到导致括号内高亮失效

[pathogen]:         https://github.com/tpope/vim-pathogen
[vim-plug]:         https://github.com/junegunn/vim-plug/
