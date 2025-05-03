require "paq" {
	'savq/paq-nvim',
	'neovim/nvim-lspconfig',
	'saghen/blink.cmp',
	'tpope/vim-commentary',
	'tpope/vim-eunuch',
	'tpope/vim-surround',
	-- 'jiangmiao/auto-pairs',
	'Evalir/dosbox-vim-colorscheme',
	'cocopon/iceberg.vim',
	'junegunn/seoul256.vim',
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
	{ 'junegunn/fzf',                    run = function() vim.fn['fzf#install']() end },
	"junegunn/fzf.vim"
}

require("config.config")
require("config.blink")
require("config.lsp")
require("config.keybinds")
require("config.treesitter")
require("config.fzf")
