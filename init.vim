set nocompatible        " be iMproved, required
filetype off            " required

call plug#begin('~/.config/nvim/plugged')
    " Beauty
    Plug 'morhetz/gruvbox'

    " Git integrations
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-signify' 
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
   
    " Commentary
    Plug 'tpope/vim-commentary'

    " Which key
    "Plug 'liuchengxu/vim-which-key'

    " Search thing
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    "Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'fatih/vim-go'
    Plug 'vim-airline/vim-airline'
    Plug 'voldikss/vim-floaterm'
    Plug 'rhysd/vim-clang-format'
    Plug 'antoinemadec/coc-fzf'

    " Productivity improvement
    Plug 'vimwiki/vimwiki'
    Plug 'tbabej/taskwiki'
    Plug 'plasticboy/vim-markdown'

    " Tag
    Plug 'preservim/tagbar'
    " Telescope
    " Plug 'BurntSushi/ripgrep'

    " Plug 'nvim-lua/popup.nvim'
    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'
    " Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Color scheme
    Plug 'NLKNguyen/papercolor-theme'
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/vim-go.vim
"source $HOME/.config/nvim/plug-config/which-key.vim

"set termguicolors
set t_Co=256   " This is may or may not needed.

"colorscheme PaperColor
colorscheme gruvbox

set linebreak
if has("autocmd")
  filetype plugin indent on
endif

" enable line numbers
let NERDTreeShowLineNumbers=1
let mapleader = ','
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

let g:vimwiki_list = [{'path':'/tmp/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Makes vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext = 1

let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 0
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

