""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" floaterm
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

let g:floaterm_shell = '/bin/zsh'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" signify
" Git signs
let g:signi_sig_add                  = '+' 
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change            = '~'

" Remove distracting number
let g:signify_sign_show_count = 0
let g:signify_sign_show_text  = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_function_calls=1
let g:go_highlight_variable_declarations=1
let g:go_highlight_variable_assignments=1
let g:go_highlight_extra_types=1
let g:go_highlight_function_parameters=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
let g:fzf_layout = { 'window': { 'width':0.8, 'height':0.8} }
let $FZF_DEFAULT_COMMANDS="rg --file"
let $FZF_DEFAULT_OPTS="--reverse --ansi --preview 'bat --style=numbers --theme='gruvbox-dark' --color=always --style=header,grid --line-range :300 {}'"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fugitive
" Pick the right column in git merge if conflic
nmap <leader>gj :diffget //3<CR>
" Pick the left column in git merge if conflic
nmap <leader>gf :diffget //2<CR>
" Revert a line in diff mode
nmap <leader>gu :diffget


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree-git-plugin
let g:NERDTreeGitStatusPorcelainVersion = 1
let g:NERDTreeGitStatusConcealBrackets = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-templates
let g:tmpl_author_name = "La Minh Duc"
let g:tmpl_company = "Axon Entreprise"
let g:tmpl_search_paths = ['~/.config/nvim/templates']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-workspace
" let g:workspace_autocreate = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy
"" Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1

" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-bookmarks
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Divers
" cpp
let g:cpp_class_scope_highlight = 0                     " Highlight class scope
let g:cpp_member_variable_highlight = 0                 " Highlight member variable of class
let g:cpp_class_decl_highlight = 1                      " Highlight class name declarations
let g:cpp_posix_standard = 1                            " Highlight POSIX functions
let g:cpp_experimental_template_highlight = 1           " Hihglight template function (fast, have some error)
" let g:cpp_experimental_simple_template_highlight = 1    " Hihglight template function (slow in large file, work well)
let g:cpp_concepts_highlight = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" oscyank
let g:oscyank_term = 'default'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rust
let g:rustfmt_autosave = 1
