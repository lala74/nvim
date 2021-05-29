" Git signs
let g:signi_sig_add                  = '+' 
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change            = '~'

" Remove distracting number
let g:signify_sign_show_count = 0
let g:signify_sign_show_text  = 1

" Jump through hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 99999<leader>gJ
nmap <leader>gK 99999<leader>gK
