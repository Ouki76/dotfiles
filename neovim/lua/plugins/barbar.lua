return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "lewis6991/gitsigns.nvim"
  },
  init = function()
    vim.g.barbar_auto_setup = true
  end,
  config = function()
    local options = { noremap = true, silent = true }
    vim.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>", options)
    vim.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>", options)

    vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", options)
    vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", options)
    vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", options)
    vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", options)
    vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", options)
    vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", options)
    vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", options)
    vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", options)
    vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", options)
    vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", options)

    vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", options)
  end,
  opts = {
    animation = false,
    tabpages = true,
    clickable = true,
    focus_on_close = "left",
    highlight_alternate = false,
    highlight_inactive_file_icons = false,
    highlight_visible = true,
    auto_hide = false
  }
}
