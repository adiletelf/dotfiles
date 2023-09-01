local status, lualine = pcall(require, "lualine")

if not status then
	vim.notify("'Lualine' could not be loaded.")
	return
end

lualine.setup()
