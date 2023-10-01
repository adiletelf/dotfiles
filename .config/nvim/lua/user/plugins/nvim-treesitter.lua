return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local treesitter = require('nvim-treesitter.configs')
    treesitter.setup({
      indent = { enable = true },
      ensure_installed = {
        'html',
        'css',
        'json',
        'yaml',
        'bash',
        'vim',
        'lua',
        'gitignore',
        'javascript',
        'typescript',
        'tsx',
        'c_sharp',
      },
      -- auto install above language parsers
      auto_install = true,
    })
  end,
}

