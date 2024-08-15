--- Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

--- Mouse & cursor
vim.opt.mouse = 'a'
vim.cmd [[
    augroup change_cursor
        au!
        au ExitPre * :set guicursor=a:ver90
    augroup END
]]

--- Other
vim.opt.number = true
vim.opt.relativenumber = false
