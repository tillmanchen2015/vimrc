"common
map 0 ^

"buffer
"use vim cmd directly
":badd
":bd  bdelete
":bn  bnext
":bp  bprevious
"bufdo bd: close all buffers
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>ba :badd<cr>
"close all buffers but current one
":%bd|e# 

"tabs
"tabnew
"tabclose
"tabprevious
"tabnext
"map tn :tabnew<cr>
"map tc :tabclose<cr>
"map tm :tabmove
"map tx :tabnext

"windows
nnoremap <leader>wo <C-W><C-W>
nnoremap <leader>wk <C-W>k
nnoremap <leader>wj <C-W>j
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l

"search
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"Disable highlight
map <silent> <leader><cr> :noh<cr>

"vim-buffer
nnoremap <leader>bo :BufOnly<cr>

"vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 40, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 40, 4)<CR>

"vim-signature
"mx : toggle mark x
"dmx: remove x
"m- : delete makrs in current line
"m/ : show marks
"m<Space> : delete all marks in current buffer
"m<BS>: delete all mark
"
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>ss :FSHere<cr>

"easy grep
",vv : search word in current cursor
",vV : search whole word in current cursor
",vr : :Replace
",vo : :GrepOptions
"easymotion
"nmap <leader>ef <Plug>(easymotion-sl)
"nmap <leader>ed <Plug>(easymotion-s2)
"nmap <leader>el <Plug>(easymotion-overwin-line)
"nmap  <leader>ew <Plug>(easymotion-bd-w)
map q <Nop>
nmap qw <Plug>(easymotion-bd-w)

"ctrlp
"Press <c-f> and <c-b> to cycle between modes.
"Press <c-d> to switch to filename only search instead of full path.
"Press <c-r> to switch to regexp mode.
"Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"find file
map <leader>cf :CtrlP           
"find buffer
map <leader>cb :CtrlPBuffer
"mru
map<leader>cm :CtrlPMRU

"tarbar
nnoremap <Leader>ts :TagbarToggle
" 正向遍历同名标签
nmap <Leader>tn :tnext
" 反向遍历同名标签
nmap <Leader>tp :tprevious

"ctrlsf
"ctrl-c stop searching
"p to preview, q to close
"-R:regular search
"-I insensitive, -S sensitive
"-C, -A, -B, context lines
"-W: word only
"-filetype
"-filematch
":h ctrlsf
nmap <leader>sf :CtrlSF
nmap <leader>sw <Plug>CtrlSFCwordPath
vmap <leader>sv <Plug>CtrlSFVwordPath
"nnoremap <leader>so :CtrlSFOpen<CR>
nmap <leader>st :CtrlSFToggle<CR>


"cscope
nmap <leader>fa :cs f
nmap <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>  
nmap <leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <leader>fi :cs find i ^<C-R>=expand("<cfile>")<CR><CR>  

"nerdtree
"nmap <leader>fl :NERDTreeToggle<CR>
nmap <leader>fl :NERDTreeFocus<CR>

"quickfix
nmap <leader>qf :copen<CR>
nmap <leader>qc :cclose<CR>
nmap <leader>qn :cnext<CR>
nmap <leader>qp :cpre<CR>
"nmap <leader>qf :cfirst<CR>
"nmap <leader>ql :clast<CR>

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


