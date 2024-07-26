function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
  
return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        vim.opt.updatetime = 300
        vim.opt.signcolumn = "yes"
        vim.keymap.set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {
            silent = true, noremap = true, expr = true, replace_keycodes = false
        })

        vim.g.coc_global_extensions = { 
            "coc-rust-analyzer", 
            "coc-clangd",
            "coc-cmake",
            "coc-lua",
            "coc-toml"
        }
    end
}