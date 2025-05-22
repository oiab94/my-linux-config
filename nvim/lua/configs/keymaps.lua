local function map( mode, lhs, rhs, opts )
	local options = { 
		noremap = true, 
		silent = true 
	}

	if opts then
		options = vim.tbl_extend( 'force', options, opts )
	end

	vim.keymap.set( mode, lhs, rhs, options )
end


-- TECLA LIDER
vim.g.mapleader = ' ' 

-- TECLAS MAS UTILIZADAS
map( 'n', '<leader>w', '<CMD>w!<CR>' )  -- Guarda el archivo
map( 'n', '<leader>q', '<CMD>q<CR>' ) 	-- Cierra neovim
map( 'n', '<leader>e', '<CMD>Ex<CR>' )	-- Abre el explorador de archivos
