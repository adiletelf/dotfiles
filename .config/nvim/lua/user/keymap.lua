-- Unmap <Space> so it wouldn't move to the next character but wait
vim.keymap.set('n', '<Space>', '<NOP>')

vim.keymap.set('n', '<C-H>', '<CMD>bprevious<CR>', {desc = 'Move to prev buffer'})
vim.keymap.set('n', '<C-L>', '<CMD>bnext<CR>', {desc = 'Move to next buffer'})

vim.keymap.set('n', '<Leader>q', '<CMD>quit<CR>', {desc = 'Quit'})
vim.keymap.set('n', '<Leader>c', '<CMD>bd<CR>', {desc = 'Buffer delete'})
vim.keymap.set('n', '<Leader>w', '<CMD>write<CR>', {desc = 'Save'})

-- Resize windows
vim.keymap.set('n', 'sh', '<CMD>vertical resize +2<CR>', {desc = 'Resize window to the left'})
vim.keymap.set('n', 'sl', '<CMD>vertical resize -2<CR>', {desc = 'Resize window to the right'})
vim.keymap.set('n', 'sk', '<CMD>resize +2<CR>', {desc = 'Resize window to increase  height'})
vim.keymap.set('n', 'sj', '<CMD>resize -2<CR>', {desc = 'Resize window to decrease height'})

-- Keep visual selection/stay in indent mode
vim.keymap.set('v', '<', '<gv', {desc = 'Indent left'})
vim.keymap.set('v', '>', '>gv', {desc = 'Indent right'})

-- Modify 'x' to delete text without changing the internal registers.
--vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- Paste without copying
-- vim.keymap.set({'n', 'v'}, 'p', '"_dp')
