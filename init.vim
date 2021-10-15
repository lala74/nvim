set nocompatible        " be iMproved, required
filetype off            " required

call plug#begin('~/.config/nvim/plugged')
    " Git integrations
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-signify' 
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'Xuyuanp/nerdtree-git-plugin'          " Git status for nerdtree

    " Which key
    "Plug 'liuchengxu/vim-which-key'


    " Search thing
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'antoinemadec/coc-fzf'
    Plug 'BurntSushi/ripgrep'

    " Coding
    Plug 'neoclide/coc.nvim', {'tag': 'v0.0.80'}
    Plug 'fatih/vim-go'
    Plug 'tibabit/vim-templates'  " Template file
    Plug 'kergoth/vim-bitbake'

    " C/C++
    Plug 'rhysd/vim-clang-format'
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'octol/vim-cpp-enhanced-highlight'
    " Plug 'bfrg/vim-cpp-modern'

    " Productivity improvement
    Plug 'thaerkh/vim-workspace'
    " Plug 'vimwiki/vimwiki'
    " Plug 'tbabej/taskwiki'
    " Plug 'plasticboy/vim-markdown'

    " Tag
    Plug 'preservim/tagbar'

    " Code indentation guideline
    Plug 'Yggdroot/indentLine'
    " Plug 'nvim-lua/popup.nvim'
    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'
    " Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Color scheme
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'morhetz/gruvbox'
    Plug 'sheerun/vim-polyglot'
    
    " Vim
    " Plug 'terryma/vim-multiple-cursors'
    Plug 'vim-airline/vim-airline'
    Plug 'voldikss/vim-floaterm'
    Plug 'jiangmiao/auto-pairs' 
    Plug 'preservim/nerdcommenter'

    " Plug 'ryanoasis/vim-devicons'
call plug#end()

source $HOME/.config/nvim/general/settings.vim

source $HOME/.config/nvim/plug-config/protobuf.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/plug-config.vim
"source $HOME/.config/nvim/plug-config/which-key.vim

source $HOME/.config/nvim/plug-config/custom.vim
source $HOME/.config/nvim/keys/mappings.vim

set t_Co=256   " This is may or may not needed.
"colorscheme PaperColor
colorscheme gruvbox

set guifont=DroidSansMono_Nerd_Font:h11

if has("autocmd")
  filetype plugin indent on
endif

syntax on

" let g:vimwiki_list = [{'path':'/tmp/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Makes vimwiki markdown links as [text](text.md) instead of [text](text)
" let g:vimwiki_markdown_link_ext = 1

" let g:taskwiki_markup_syntax = 'markdown'
" let g:markdown_folding = 1

