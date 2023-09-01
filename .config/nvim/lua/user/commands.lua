local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

autocmd('FileType', {
    desc = "Use 'q' to close the window",
    pattern = {'help', 'man'},
    group = augroup,
    command = 'nnoremap <buffer> q <CMD>quit<CR>'
})

