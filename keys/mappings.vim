" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR> 
nnoremap <M-k> :resize +2<CR> 
nnoremap <M-h> :vertical resize -2<CR> 
nnoremap <M-l> :vertical resize +2<cr> 

" easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<ESC>

" TAB in general mode will move to next buffer (window) 
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-q> :wq!<CR>
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

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^D

" Fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>

" Grep
nnoremap <silent> <C-f> :Rg<CR>  

" Float Terminal
nnoremap <C-t> :FloatermNew<CR> 
