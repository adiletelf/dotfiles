return {
	{
    'nvim-lualine/lualine.nvim',
    config = function()
      local status, lualine = pcall(require, "lualine")
      if not status then
        vim.notify("'Lualine' could not be loaded.")
        return
      else
        lualine.setup()
      end
    end,
    },
}
