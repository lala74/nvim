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
" fzf
let g:fzf_layout = { 'window': { 'width':0.8, 'height':0.8} }
let $FZF_DEFAULT_OPTS='--reverse'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Divers
" cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 0
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
