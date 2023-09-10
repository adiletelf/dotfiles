-- Set <leader> to 'space'
vim.g.mapleader = ' '

-- Disable wrapping
vim.opt.wrap = false

-- Show numbers and use relative ordering
vim.opt.number = true ;vim.opt.relativenumber = true

-- Set tab to 4 spaces
vim.opt.tabstop = 4; vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- To ALWAYS use the system clipboard for ALL operations.
vim.opt.clipboard:append('unnamedplus')

vim.opt.termguicolors = true

