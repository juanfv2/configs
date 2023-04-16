local api = vim.api

api.nvim_create_augroup("bufCheck", { clear = true })
api.nvim_create_autocmd( "FileType", { group = "bufCheck", pattern = { "php" }, command = "setlocal commentstring=//\\ %s" })
api.nvim_create_autocmd( "FileType", { group = "bufCheck", pattern = { "lua" }, command = "setlocal commentstring=--\\ %s" })
api.nvim_create_autocmd( "FileType", { group = "bufCheck", pattern = { "sql" }, command = "setlocal commentstring=--\\ %s" })
api.nvim_create_autocmd( "FileType", { group = "bufCheck", pattern = { "env" }, command = "setlocal commentstring=#\\ %s" })
-- api.nvim_create_autocmd( "FileType", { group = "bufCheck", pattern = { "apache" }, command = "setlocal commentstring=#\\ %s" })
-- api.nvim_create_autocmd("FileType", { group = "bufCheck", pattern = { "apache" }, command = "setlocal commentstring=# %s", })

-- api.nvim_create_autocmd({ "VimEnter", "BufNewFile", "BufReadPost" }, { command = "silent! call HardMode()" })
