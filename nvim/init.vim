call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sleuth'

" LSP, indenting & highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafOfTree/vim-svelte-plugin'

" Other
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

" Color schemes
Plug 'mellow-theme/mellow.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'romainl/apprentice'
Plug 'nanotech/jellybeans.vim'
Plug 'LuRsT/austere.vim'
Plug 'ourway/vim-bruin'
call plug#end()

set number
set relativenumber
set bg=dark
set termguicolors
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
" setlocal indentkeys+=0<:> " Ensure tags indent properly
" setlocal indentexpr=
set autoindent
set smartindent
silent! colorscheme mellow

" Custom highlights
hi Normal guibg=None
hi LineNumber guibg=None
hi SignColumn guibg=None
hi EndOfBuffer guibg=None

let g:mapleader=','

" Configure COC
source $HOME/.config/nvim/coc.vim

" Configure FZF
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []
let g:fzf_layout = { 'window': '-tabnew' }
noremap <leader>f <cmd>:FZF<CR>
noremap <leader>m <cmd>:Rg<CR>
noremap <leader>g <cmd>:GitFiles<CR>
noremap <leader>conf <cmd>:FZF ~/.config<CR>

" Emmet
let g:user_emmet_leader_key=','

lua << EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",  -- Install parsers for all languages
    highlight = {
      enable = true,  -- Enable Tree-sitter-based syntax highlighting
    },
    indent = {
      enable = true,  -- Enable Tree-sitter-based syntax highlighting
    },
  }
EOF
