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
nnoremap <M-j> :resize +2<CR> 
nnoremap <M-k> :resize -2<CR> 
nnoremap <M-h> :vertical resize +2<CR> 
nnoremap <M-l> :vertical resize -2<cr> 

" easy CAPS
" inoremap <S-u> <ESC>viwUi
" nnoremap <S-u> viwU<ESC>

" TAB in general mode will move to next buffer (window) 
" nnoremap <TAB> :bnext<CR>
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ripgrep
nnoremap <silent> <C-f> :Rg<CR>  


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
map <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagBar
nmap <F8> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" commentary
" toggle comment
nnoremap <silent> <C-\> :Commentary<CR>
vnoremap <silent> <C-\> :Commentary<CR>


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

