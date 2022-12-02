-- import nvim-treesitter plugin safely
local _status, treesitter = pcall(require, "nvim-treesitter.configs")
if not _status then
	return
end

treesitter.setup({
	ensure_installed = { "c", "lua", "rust", "php", "javascript", "dart", "ruby", "c_sharp", "css", "html", "json" },
	highlight = {
		enable = true,
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	autoparts = {
		enable = true,
	},
	-- rainbow = {
	--     enable = true,
	--     -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
	--     extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
	--     max_file_lines = nil -- Do not enable for files with more than n lines, int
	--     -- colors = {}, -- table of hex strings
	--     -- termcolors = {} -- table of colour name strings
	-- }
})
