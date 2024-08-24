return {
	-- Mason
	{
		'williamboman/mason.nvim',
	},

	-- Mason-lspconfig
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = {
			'neovim/nvim-lspconfig',
		}
	},

	--lspconfig
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')

			-- Setup
			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls' }
			})

			-- Conectar a los servers
			-- Lua
			lspconfig.lua_ls.setup({})
		end,
	},
}
