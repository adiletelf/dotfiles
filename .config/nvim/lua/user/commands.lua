local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

autocmd('FileType', {
    desc = "Use 'q' to close the window",
    pattern = {'help', 'man'},
    group = augroup,
    command = 'nnoremap <buffer> q <CMD>quit<CR>'
})

autocmd('FileType', {
    desc = 'Set tab to 2 spaces',
    pattern = {
        'javascript',
        'typescript',
        'lua',
    },
    group = augroup,
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end
})
