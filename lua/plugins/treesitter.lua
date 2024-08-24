return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.install').compilers = {'zig', 'gcc'}
		local configs = require('nvim-treesitter.configs')

		configs.setup({
			ensure_installed = {'yaml', 'typescript', 'javascript', 'lua'},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true},
		})
	end,
}
