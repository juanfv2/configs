-- " make test commands execute using dispatch.vim
-- autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
local api = vim.api

api.nvim_create_autocmd({ "VimEnter", "BufNewFile", "BufReadPost" }, { command = "silent! call HardMode()" })
vim.g["HardMode_level"] = "wannabe"
vim.g["HardMode_hardmodeMsg"] = "Don't use this!"
