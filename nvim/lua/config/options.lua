-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.fillchars = { fold = " " }
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99

-- zM: Closes recursively the root folds and all their children
-- zm: Increases the foldlevel by one, i.e. closes the innermost level of folds that are not yet folded
-- The opposite commands are:
--
-- zR: All folds are open
-- zr: Decreases the foldlevel by one
