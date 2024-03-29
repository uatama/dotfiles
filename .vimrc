set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
filetype off
set rtp+=~/.vim/plugin/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
call vundle#end()
filetype plugin indent on

set shellslash
map <C-e> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\~$','node_modules'] 
let NERDTreeMinimalUI=1
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = 'x'
" 基本配置
"
" 设置行号
set rnu
set nu
" 语法高亮。自动识别代码，使用多种颜色表示
syntax enable
" 设置gvim的字体
set guifont=Consolas:h10
" 设置gvim下和外部的复制粘贴
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
imap <C-s> <ESC>:wq<CR>
nmap <C-s> :wq<CR>
nmap <C-v> "+p

inoremap jk <ESC>
" 支持使用鼠标
set mouse=a
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent
" 按下Tab键后，vim显示的空格数
set tabstop=4
" normal模式下，>>增加一级缩进、<<取消一级缩进、==取消全部缩进时，每一级缩进的空格数
set shiftwidth=4
" 自动将Tab转为空格(防止Tab键在不同编辑器缩进不一致导致问题)
set expandtab
" Tab转为多少个空格
set softtabstop=4
" 光标所在行高亮
set cursorline
" 自动折行
set wrap
" 垂直滚动时，光标距离顶部/底部的距离（单位：行）
set scrolloff=5
" 水平滚动时，光标距离行首或行尾的距离（单位：字符）
set sidescrolloff=30
" 设置行宽，即一行显示多少字符
set textwidth=1000
" 是否显示状态栏：0表示不显示，1表示只在多窗口显示，2表示显示
