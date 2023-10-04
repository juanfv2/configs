-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local options = {
  noremap = true,
  silent = true,
}

vim.keymap.set("n", "<leader><esc>", ":nohlsearch<cr>", options)
vim.keymap.set("n", "<leader>y", '"*y', { noremap = true, silent = true, desc = "Yank into mark" })
vim.keymap.set("n", "<leader>p", '"*p', { noremap = true, silent = true, desc = "Paste from mark" })
vim.keymap.set("n", "ww¡", ":%y<cr>", { noremap = true, silent = true, desc = "Yank all content file" })
vim.keymap.set("n", "ww'", "ggVGp:w<cr>", { noremap = true, silent = true, desc = "Replace/Paste all content file" })
vim.keymap.set("n", "ww0", ":%d<cr>:w<cr>", { noremap = true, silent = true, desc = "Delete all content" })
vim.keymap.set("i", "jj", "<ESC>", options)

-- add semi-colon to end of line
vim.keymap.set("i", "jk", "<c-o>A;<esc>", options)
vim.keymap.set("n", "jk", "A;<esc>", options)

-- duplicate lines, works in visual mode as well.
vim.keymap.set("n", "00", "yyp", options)
vim.keymap.set("v", "00", "y`>pgv", options)

vim.keymap.set("n", "<leader>ter", ":ToggleTerm<cr>", options)

vim.keymap.set("n", "we", "<cmd>w<cr>", { noremap = true, silent = true, desc = "Write file and format" })

vim.keymap.set("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
