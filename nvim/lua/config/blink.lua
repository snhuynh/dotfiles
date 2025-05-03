require'blink.cmp'.setup {
	keymap = { preset = 'enter' },
	completion = {
		documentation = {
			auto_show = false,
		},
	},
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},
	fuzzy = {
		implementation = 'lua',
	},
}
