return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local telescope = require('telescope')

    telescope.setup()

    local keymap = vim.keymap
    keymap.set('n', '<Leader>ff', '<CMD>Telescope find_files<CR>', {desc = 'Fuzzy find files in CWD'})
    keymap.set('n', '<Leader>fr', '<CMD>Telescope oldfiles<CR>', {desc = 'Fuzzy find recent files'})
    keymap.set('n', '<Leader>fs', '<CMD>Telescope live_grep<CR>', {desc = 'Fuzzy find string in CWD'})
    keymap.set('n', '<Leader>fc', '<CMD>Telescope grep_string<CR>', {desc = 'Fuzzy find string under cursor in CWD'})

  end,
}
