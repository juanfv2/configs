-- import nvim-bufferline safely
local _status, bufferline = pcall(require, "bufferline")
if not _status then
    return
end

-- vim.opt.termguicolors = true
bufferline.setup {}
