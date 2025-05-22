-- TRANSPARENCIA DE NEOVIM
vim.cmd.highlight( 'Normal guibg=none' )
vim.cmd.highlight( 'NonText guibg=none' )

-- COLOR DE LOS RELATIVENUMBERS
vim.cmd.highlight( 'LineNrAbove guifg=green' )
vim.cmd.highlight( 'LineNr guifg=red' )
vim.cmd.highlight( 'LineNrBelow guifg=green' )

-- COLOR DE SELECCION VISUAL
vim.cmd.highlight( 'Visual guibg=green' )

-- COLOR DE LA LINEA EN LA QUE NOS ENCONTRAMOS
vim.cmd.highlight( 'CursorLine guibg=#424241' )

-- COLOR DEL RULER
vim.cmd.highlight( 'ColorColumn guibg=red' )
