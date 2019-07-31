set vb t_vb=
au GuiEnter * set t_vb=

"avoiv paste indent issue
set pastetoggle=<F3>
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
let mapleader=","
filetype on
filetype plugin on

"easy grep
let g:EasyGrepMode = 1       "all:0, open buffers:1, trackext:2
let g:EasyGrepCommand = 0   "vimgrep:0, grepprg:1
let g:EasyGrepIgnoreCase = 1

"ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ack_qhandler = "vertical copen 100"
let g:ackhighlight = 1

"easy-motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

set undodir=~/undodir
set undofile

"for regular expression
set magic
"show matching bracket when text indicator is over them\
set showmatch
"set a bit extra margin to the left
set foldcolumn=1
"CTRL-P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

set history=500
" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
set smartcase
set autoindent
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" A buffer becomes hidden when it is abandoned
set hid
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 配色方案
set background=dark
"colorscheme solarized
"""colorscheme molokai
"colorscheme phd

 " 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
 " 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
"status bar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
set smarttab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set nobackup
set nowb
set noswapfile

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"tagbar
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
"let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0',
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
   \ }

set clipboard=unnamed

"ctag
set tags=./tags

"cscope
"set csprg=~/.vim/cscope.sh
" set quickfix
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
" use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
set cscopetag
" check cscope for definition of a symbol before checking ctags: set to 1
" if you want the reverse search order.
set csto=0
" add any cscope database in current directory
if filereadable("cscope.out")
	cs add cscope.out 
" else add the database pointed to by environment variable
elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB 
endif
" show msg when any other cscope db added
set cscopeverbose  

"nerdtree
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
"let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

"let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
"let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
"let g:interestingWordsRandomiseColors = 1

"ctrlsf
let g:ctrlsf_context = '-B 0 -A 0'
let g:ctrlsf_ackprg = '/usr/bin/ag'

call plug#begin('~/.vim/plugged')
"status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"switch between cpp and h
Plug 'derekwyatt/vim-fswitch'
"list tags. need ctag
Plug 'majutsushi/tagbar'
"search. need ack.
Plug 'dyng/ctrlsf.vim'
"comment. <leader>cc, <leader>cu
Plug 'scrooloose/nerdcommenter'
"snipet. <tab>
"Plug 'SirVer/ultisnips'
"file tree
Plug 'scrooloose/nerdtree'
"surround
Plug 'tpope/vim-surround'
"find file
Plug 'kien/ctrlp.vim'
"pair
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
"nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
"nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
"nnoremap <silent> n :call WordNavigation('forward')<cr>
"nnoremap <silent> N :call WordNavigation('backward')<cr>
Plug 'lfv89/vim-interestingwords'
Plug 'dkprice/vim-easygrep'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-smooth-scroll'
Plug 'rhysd/clever-f.vim'
Plug 'chxuan/vim-buffer'
call plug#end()

