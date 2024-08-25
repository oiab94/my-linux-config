local function map(mode, lhs, rhs, opts)
	local options = {noremap = true, silent = true}

	if opts then
		options = vim.tbl_extend('force', options, opts)
	end

	vim.keymap.set(mode, lhs, rhs, options)
	-- vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Key Leader
vim.g.mapleader = ' '

-- Mapeo de teclas
map('n', '<leader>w', '<CMD>w!<CR>') 	-- Guardar archivo
map('n', '<leader>q', '<CMD>wq!<CR>') -- Guardar y Cerrar Neovim
map('n', '<leader>e', '<CMD>Ex<CR>') 	-- Abre el explorador de archivos



-- Mapeo de teclas PLUGINS
-- Telescope: Ver Github para mas opciones
map('n', '<leader>f', '<CMD>Telescope find_files<CR>')	-- Lista los archivos en nuestro directorio de trabajo, respeta ficheros en .gitignore
map('n', '<leader>g', '<CMD>Telescope live_grep<CR>')	-- Busca el string en nuestro directorio de trabajo
map('n', '<leader>b', '<CMD>Telescope buffers<CR>')		-- Lista todos los buffers abierto en neovim
map('n', '<leader>h', '<CMD>Telescope help_tags<CR>')	-- Lista todos los help tags y abre en una nueva ventana
map('n', '<leader>d', '<CMD>Telescope diagnostics<CR>')	-- Lista todos diagnostic encontrado en el código
map('n', '<leader>i', '<CMD>Telescope lsp_implementations<CR>')	-- Lista todos diagnostic encontrado en el código

-- Neotree:
map('n', '<C-n>', '<CMD>Neotree<CR>')
map('n', '<C-c>', '<CMD>Neotree close<CR>')


-- LSP:
<<<<<<< HEAD
map('n', 'K', vim.lsp.buf.hover)						-- Muestra información acerca del simbolo debajo del cursor en una pantalla flotante
map('n', 'gd', vim.lsp.buf.definition)			-- Va a la definición del simbolo que se encuetra debajo del cursor
map('n', 'gD', vim.lsp.buf.declaration) 		-- Va la declaración del simbolo que se encuentra debajo del cursor
map('n', '<leader>rn', vim.lsp.buf.rename) 	-- Renombra todas las referencias que se encuentra debajo del cursor
map('n', 'gr', vim.lsp.buf.references) 			-- Lista todas las referencias que se encuentra debajo del cursor
=======
map('n', 'K', vim.lsp.buf.hover, { buffer=0 })				-- Muestra información acerca del simbolo debajo del cursor en una pantalla flotante
map('n', 'gd', vim.lsp.buf.definition, { buffer=0 })	-- Va a la definición del simbolo que se encuetra debajo del cursor
map('n', 'gD', vim.lsp.buf.declaration, { buffer=0 })			-- Salta a la declaracion del objecto
map('n', '<leader>rn', vim.lsp.buf.rename, { buffer=0 })		-- Salta a los lugares donde se implementa del objecto
map({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { buffer=0 })	-- Indica las acciones que podemos realizar sobre el simbolo que se encuentra debajo del cursor

map('n', ']d', vim.diagnostic.goto_next, { buffer=0 })	-- Salta al anterior error encotrado
map('n', '[d', vim.diagnostic.goto_prev, { buffer=0 })	-- Salta al siguiente error encotrado
>>>>>>> 76a8d65 (Keymaps para lsp)
