-- import safely
local _status, luasnip = pcall(require, "luasnip")
if not _status then
	return
end
local _status, from_vscode = pcall(require, "luasnip.loaders.from_vscode")
if not _status then
	return
end

-- vim.opt.termguicolors = true
-- luasnip.setup({})

from_vscode.lazy_load()

-- luasnip.filetype_extend("ruby", { "rails" })
luasnip.filetype_extend("dart", { "flutter" })
