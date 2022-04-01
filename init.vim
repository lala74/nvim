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
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'  " Display capture group using :TSHighlightCaptureUnderCursor
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'fatih/vim-go'
    Plug 'tibabit/vim-templates'  " Template file
    Plug 'kergoth/vim-bitbake'

    " C/C++
    Plug 'rhysd/vim-clang-format'
    " Plug 'jackguo380/vim-lsp-cxx-highlight'
    " Plug 'octol/vim-cpp-enhanced-highlight'
    " Plug 'bfrg/vim-cpp-modern'
 
    " Productivity improvement
    Plug 'thaerkh/vim-workspace'
    " Plug 'vimwiki/vimwiki'
    " Plug 'tbabej/taskwiki'
    " Plug 'plasticboy/vim-markdown'
    Plug 'ojroques/vim-oscyank'  " Copy to terminal

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
    Plug 'MattesGroeger/vim-bookmarks'


    " Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'folke/trouble.nvim'
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

lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
  require'nvim-treesitter.configs'.setup {
      -- One of "all", "maintained" (parsers with maintainers), or a list of languages
      ensure_installed = "maintained",

      -- Install languages synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- List of parsers to ignore installing
      ignore_install = { "javascript" },

      highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- list of language that will be disabled
        disable = { "rust", "go" , "cmake"},

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
        },
   }
   require"nvim-treesitter.highlight".set_custom_captures {
        -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
        -- ["field"] = "Identifier",
        ["constructor"] = "TSFunction",
   }
EOF

