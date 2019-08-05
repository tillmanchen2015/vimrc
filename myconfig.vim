"something need to changed for windows git bash
"1. plug path, for windows git bash, it's /usr/share/vim/vim81/plugged. search plug#begin
"2. windows git bash doesn't contain ag. comment line ctrlsf_ackprg
"3. myconfig.vim is unavailable. merge it to vimrc manually.

"common
map 0 ^

"""""""""""""""""""""""""""""""A"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""B"""""""""""""""""""""""""""""""
"buffer
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>ba :badd<cr>
"vim-buffer
"close all buffers but current one
nnoremap <leader>bo :BufOnly<cr>
":%bd|e# 

"""""""""""""""""""""""""""""""C"""""""""""""""""""""""""""""""
"ctrlp
"Press <c-f> and <c-b> to cycle between modes.
"Press <c-d> to switch to filename only search instead of full path.
"Press <c-r> to switch to regexp mode.
"Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"find file
map <leader>cf :CtrlP<CR>
"find buffer
map <leader>cb :CtrlPBuffer<CR>
"mru
map<leader>cm :CtrlPMRU<CR>

"""""""""""""""""""""""""""""""D"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""E"""""""""""""""""""""""""""""""
"scroll page:
nmap ej <C-D>
nmap ek <C-u>
nmap el <C-F>
nmap e; <C-B>

"""""""""""""""""""""""""""""""F"""""""""""""""""""""""""""""""
"nerdtree
"nmap <leader>fl :NERDTreeToggle<CR>
nmap <leader>fl :NERDTreeFocus<CR>

"""""""""""""""""""""""""""""""G"""""""""""""""""""""""""""""""
"attention: gg gd gD g; g, are occupied
"g; jump back to previous change
"g, jump to next change
"go to any word
nmap g' <Plug>(easymotion-bd-w)
"cscope
nmap gj :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap gk :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap gl :cs find t <C-R>=expand("<cword>")<CR><CR> 
"go back, go next, like chrome
nmap gp <C-O> 
nmap gn <C-I>   

nmap <leader>ge :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <leader>gf :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <leader>gi :cs find i ^<C-R>=expand("<cfile>")<CR><CR>  
nmap <leader>ga :cs f
nmap <leader>gc :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <leader>gd :cs find d <C-R>=expand("<cword>")<CR><CR>  
"ack.vim
" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>


"""""""""""""""""""""""""""""""H"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""I"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""J"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""K"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""M"""""""""""""""""""""""""""""""
nnoremap <leader>mx :call MaximizeToggle()<CR>

"""""""""""""""""""""""""""""""L"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""N"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""O"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""P"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""Q"""""""""""""""""""""""""""""""
"I don't use recording
map q <Nop>

"quickfix
"nmap qf :vertical copen 100<CR>
nmap qj :cnext<CR>
nmap qk :cpre<CR>
nmap ql :copen<CR>
nmap q; :cclose<CR>
nmap qu :cfirst<CR>
nmap qi :clast<CR>
"
"""""""""""""""""""""""""""""""R"""""""""""""""""""""""""""""""
" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

"""""""""""""""""""""""""""""""S"""""""""""""""""""""""""""""""
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
nmap <leader>sj <Plug>CtrlSFCwordPath -ignoredir 'tags' -filetype cc
vmap <leader>sk <Plug>CtrlSFVwordPath -ignoredir 'tags' -filetype cc
nmap <leader>sl :CtrlSFToggle<CR>
"nmap <leader>s; :CtrlSF -ignoredir 'tags' -filetype cc

" *.cpp 和 *.h 间切换
nmap <silent> <Leader>su :FSHere<cr>

"""""""""""""""""""""""""""""""T"""""""""""""""""""""""""""""""
"tarbar
nnoremap <Leader>ts :TagbarToggle
" 正向遍历同名标签
nmap <Leader>tn :tnext
" 反向遍历同名标签
nmap <Leader>tp :tprevious

"""""""""""""""""""""""""""""""U"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""V"""""""""""""""""""""""""""""""
"easy grep
",vv : search word in current cursor
",vV : search whole word in current cursor
",vr : :Replace
",vo : :GrepOptions
"
"""""""""""""""""""""""""""""""W"""""""""""""""""""""""""""""""
"windows
nnoremap <leader>wo <C-W><C-W>
nnoremap <leader>wk <C-W>k
nnoremap <leader>wj <C-W>j
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l

"""""""""""""""""""""""""""""""X"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""Y"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""Z"""""""""""""""""""""""""""""""

"tabs
"tabnew
"tabclose
"tabprevious
"tabnext
"map tn :tabnew<cr>
"map tc :tabclose<cr>
"map tm :tabmove
"map tx :tabnext

"delete marks
"delm! delm A-Z delm 0-9

"change list
"g; jump back
"g, jump next



"search
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"Disable highlight
map <silent> <leader><cr> :noh<cr>

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

"easymotion
"nmap <leader>ef <Plug>(easymotion-sl)
"nmap <leader>ed <Plug>(easymotion-s2)
"nmap <leader>el <Plug>(easymotion-overwin-line)
"nmap  <leader>ew <Plug>(easymotion-bd-w)







"nnoremap <C-W>o :call MaximizeToggle()<CR>
"nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

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


