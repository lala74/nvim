""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" divers
" toggle hexdump
nnoremap <Leader>hd :%!xxd<CR>
nnoremap <Leader>dh :%!xxd -r<CR>

" copy and paste to outside buffer
vnoremap <C-c> "+y
map <C-v> "+P

" toggle search highlighting
nnoremap <silent> <Leader>l :set hls!<CR>

" better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")
  
" Use alt + hjkl to resize windows
" nnoremap <Leader>h :resize +2<CR> 
" nnoremap <Leader>j :resize -2<CR> 
" nnoremap <Leader>k :vertical resize +2<CR> 
" nnoremap <Leader>l :vertical resize -2<cr> 

" Better delete in insert mode
" Delete forward
inoremap <C-h> <C-o>h <C-o>x
" Delete backward
inoremap <C-l> <C-o>x

" easy CAPS
" inoremap <S-u> <ESC>viwUi
" nnoremap <S-u> viwU<ESC>

" TAB in general mode will move to next buffer (window) 
nnoremap <Leader><TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>

" Use control-c instead of escape
nnoremap <C-c> <ESC>

" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^D

nmap <CR> o<Esc>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


" SEARCH FOR VISUAL SELECTED TEXT
" Press * to search forwards for selected text, or # to search backwards.
" As normal, press n for next search, or N for previous.
" Handles multiline selection and search.
" Whitespace in the selection matches any whitespace when searching (searching for "hello world" will also find "hello" at the end of a line, with "world" at the start of the next line).
" Each search is placed in the search history allowing you to easily repeat previous searches.
" No registers are changed.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>



" For QuickFix window
" Enter to open item
augroup QuickFix
     au FileType qf map <buffer> <CR> :.cc <CR> zz <C-w>j
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ripgrep
nnoremap <silent> <C-f> :Rg<CR>  


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Commenter
" toggle comment
map <C-\> <plug>NERDCommenterToggle h


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagBar
nmap <F8> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" floaterm 
nnoremap <C-t> :FloatermNew<CR> 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" signify
" Jump through hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 99999<leader>gJ
nmap <leader>gK 99999<leader>gK


