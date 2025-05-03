require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "rust", "lua", "vim", "sql", "markdown" },
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	}
}
