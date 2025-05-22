return {
	'sainnhe/sonokai',
	lazy = false,
	config = function()
		vim.g.sonokai_enable_italic = true
		vim.cmd.colorscheme('sonokai')
	end
}
