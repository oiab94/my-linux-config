return {
	{
		'williamboman/mason.nvim',
		config = true,
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config = {
			ensure_installed = { 'jdtls', 'lua_ls' }
		},
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')

			lspconfig.lua_ls.setup({})
			lspconfig.jdtls.setup({})
		end,
	},
}
