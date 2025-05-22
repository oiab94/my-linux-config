-- PERMITE HABILITAR LOS COLORES DE LA TERMINAL SI SOPORTA 24-bit RGB
vim.opt.termguicolors = true

-- NO GUARDA ARCHIVOS TEMPORALES
vim.opt.swapfile = false

-- MUESTRA LOS NUMEROS DE LINEA
vim.opt.number = true
vim.opt.relativenumber = true

-- TAMAÑO DE LAS TABULACIONES
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0 -- espacios por cada (auto)indent. estando en 0 toma el valor de tabstop
vim.opt.smartindent = true

-- AGREGA EL COLOR DE LAS COLUMNAS
vim.opt.colorcolumn = '80'

-- PERMITE BORRAR, COPIAR, PEGAR CUALQUIER TEXTO 
vim.opt.clipboard = 'unnamedplus'

-- CAMBIA LA FORMA EN LA QUE SE PRESENTA EL TEXTO EN LA PANTALLA (sin salto de linea)
vim.opt.wrap = false 

-- MUESTRA LA LINEA EN LA QUE NOS ENCOTRAMOS
vim.opt.cursorline = true
