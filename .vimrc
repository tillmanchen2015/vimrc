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
map 0 ^

"easy-motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
"map <Leader>ej <Plug>(easymotion-j)
"map <Leader>ek <Plug>(easymotion-k)"
" "
" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>ef <Plug>(easymotion-overwin-f)
"
"s{char}{char} to move to {char}{char}
nmap <Leader>ed <Plug>(easymotion-overwin-f2)
"
"" Move to line
nmap <Leader>el <Plug>(easymotion-overwin-line)

" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>ew <Plug>(easymotion-overwin-w)"

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>

set undodir=~/undodir
set undofile

""""""""""""""""""""""""""""""
" => CTRL-P
" """"""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

"Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
"map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tx :tabnext

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

set history=500
" 依次遍历子窗口
nnoremap <Leader>wn <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>wl <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>wh <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>wk <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>wj <C-W>j
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
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

" 禁止光标闪烁
"set gcr=a:block-blinkon0
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

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

"tagbar
"nnoremap <leader>t :TagbarToggle<CR>
nnoremap <Leader>ts :TagbarToggle<CR>
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
let g:tagbar_ctags_bin='/usr/bin/ctags'
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


" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

set clipboard=unnamed

" 使用 ctrlsf.vim
" 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in
" project
nmap     <Leader>sp <Plug>CtrlSFCwordPath
nnoremap <Leader>sr :CtrlSF<CR>
nnoremap <Leader>sf :CtrlSF
"vnoremap<Leader>sw <Plug>CtrlSFVwordPath
vmap     <Leader>sw <Plug>CtrlSFVwordPath

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

"使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
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

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction



call plug#begin('/usr/share/vim/vim81/plugged')
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

call plug#end()

