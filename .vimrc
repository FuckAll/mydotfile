set nocompatible              " be iMproved, required
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'terryma/vim-multiple-cursors.git'
Plugin 'mbbill/undotree.git'
Plugin 'Lokaltog/vim-powerline.git'
call vundle#end()
""开启插件
filetype plugin indent on 

"********************************************************
""                   一般性配置                          *
"********************************************************
""关闭vim一致性原则
set nocompatible
"显示行号
set number
""设置在编辑过程中右下角显示光标的行列信息
set ruler
"在状态栏显示正在输入的命令
set showcmd
""设置历史记录条数
set history=1000
"设置取消备份 禁止临时文件的生成
set nobackup
set noswapfile
""设置匹配模式
set showmatch
"设置自动对齐
set autoindent
set cindent
""开启语法高亮功能
syntax enable
syntax on
""设置搜索时忽略大小写
set ignorecase
"设置tab宽度
set tabstop=8
"设置自动对齐空格数
set shiftwidth=8
"将tab键自动转换为空格
set expandtab
"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试以下编码
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"检测文件类型
filetype on
"filetype indent on

" vim theme
"
let g:molokai_original = 1
"let g:solarized_termcolors=256
"
" vim-go
let mapleader = ","
au BufRead,BufNewFile *.go set filetype=go
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)                     
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_disable_autoinstall = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:neocomplete#enable_at_startup = 1
" 

"                      NERD_Tree 配置                   *
"********************************************************
"显示增强
let NERDChristmasTree=1
"自动调整焦点
let NERDTreeAutoCenter=1
"鼠标模式:目录单击,文件双击
let NERDTreeMouseMode=2
"打开文件后自动关闭
let NERDTreeQuitOnOpen=1
"显示文件
let NERDTreeShowFiles=1
"显示隐藏文件
let NERDTreeShowHidden=1
"高亮显示当前文件或目录
let NERDTreeHightCursorline=1
"显示行号
let NERDTreeShowLineNumbers=1
"窗口位置
let NERDTreeWinPos='left'
"窗口宽度
let NERDTreeWinSize=31
"不显示'Bookmarks' label 'Press ? for help'
let NERDTreeMinimalUI=1
"快捷键
nnoremap <leader>w :NERDTreeToggle<CR>
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
"只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"tagbar
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',  
    \ 'kinds'     : [  
        \ 'p:package',  
        \ 'i:imports:1',  
        \ 'c:constants',  
        \ 'v:variables',  
        \ 't:types',  
        \ 'n:interfaces',  
        \ 'w:fields',  
        \ 'e:embedded',  
        \ 'm:methods',  
        \ 'r:constructor',  
        \ 'f:functions'  
    \ ],  
    \ 'sro' : '.',  
    \ 'kind2scope' : {  
        \ 't' : 'ctype',  
        \ 'n' : 'ntype'  
    \ },  
    \ 'scope2kind' : {  
        \ 'ctype' : 't',  
        \ 'ntype' : 'n'  
    \ },  
    \ 'ctagsbin'  : 'gotags',  
    \ 'ctagsargs' : '-sort -silent'  
    \ } 

"ctrlp 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"vim-multiple-cursors
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"undotree
nnoremap <Leader>u :UndotreeToggle<cr>

"快捷键
nmap <Leader>t :TagbarToggle<CR>

nnoremap <leader>s :w<CR>
nnoremap <leader>q :q!<CR>

"跳转 CTRL-O to jump back CTRL-I to jump forward
nnoremap <leader>jd :YcmCompleter GoToImplementationElseDeclaration<CR>


"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}
