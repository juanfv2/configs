-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local options = {
  noremap = true,
  silent = true,
}

vim.keymap.set("n", "<leader><esc>", ":nohlsearch<cr>", options)
vim.keymap.set("n", "<leader>y", '"*y', options)
vim.keymap.set("n", "<leader>p", '"*p', options)
vim.keymap.set("n", "<leader>we", ":w<cr>", options)
-- vim.keymap.set("n", "<leader>q", ":q<cr>", options)
vim.keymap.set("n", "ww¡", ":%y<cr>", options)
vim.keymap.set("n", "ww'", "ggVGp", options)
vim.keymap.set("n", "ww0", ":%d<cr>", options)
vim.keymap.set("i", "jj", "<ESC>", options)

-- add semi-colon to end of line
vim.keymap.set("i", "jk", "<c-o>A;<esc>", options)
vim.keymap.set("n", "jk", "A;<esc>", options)
