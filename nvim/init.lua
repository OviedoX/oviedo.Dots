-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- config path ejecutable
--vim.env.PATH = vim.env.PATH .. ";C:\\Users\\Sergio Oviedo\\AppData\\Local\\nvim-data\\mason\\bin"

-- Config method plegado/folder
vim.o.foldmethod = 'manual'
vim.o.foldenable = true

-- config para guardar y restaurar vistas
vim.o.viewoptions = 'folds,cursor,curdir'
vim.cmd([[
augroup remember_folds
    autocmd!
    autocmd BufWinLeave * silent! mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
]])

