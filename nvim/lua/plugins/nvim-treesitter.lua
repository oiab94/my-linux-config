return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
	
		configs.setup({ 
			ensure_installed = { 
				"markdown", 
				"c", 
				"cpp", 
				"lua", 
				"javascript", 
				"json", 
				"typescript" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
