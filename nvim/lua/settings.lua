local opt = vim.opt -- for conciseness

-- basic settings " ""General"" General
vim.cmd("syntax on")

vim.wo.number = true
opt.rnu = true
opt.spell = true
opt.spelllang = "en,es"
opt.visualbell = true

-- smart search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false
opt.laststatus = 0

-- tab setting
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 4
opt.expandtab = true

opt.autoindent = true
vim.bo.smartindent = true
opt.smarttab = true

-- Advanced
-- opt.rules = true;
opt.autowriteall = true
opt.pumheight = 10
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.swapfile = false

-- backup settings

opt.backupdir = "/tmp"
opt.directory = "~/.nvim/tmp,."
opt.backup = true
opt.writebackup = true

opt.undodir = "/Users/juan/.nvim/undodir"
opt.undofile = true
-- set term=xterm-256color
-- vim.go.term          = 'xterm-256color'
vim.go.t_Co = "256"
opt.showtabline = 2
opt.updatetime = 300
opt.timeoutlen = 500
opt.undolevels = 1000
opt.backspace = "indent,eol,start"
opt.mouse = ""
opt.clipboard = "unnamedplus"
opt.cmdheight = 1
-- opt.iskeyword     = '-'
-- opt.shortmess = opt.shortmess .. 'c'
opt.hidden = true
opt.whichwrap = "b,s,<,>,[,],h,l"
opt.splitbelow = true
opt.splitright = true
opt.conceallevel = 0
opt.showmode = true
opt.scrolloff = 8
opt.sidescrolloff = 5
opt.signcolumn = "yes"
opt.fdm = "expr"
opt.foldexpr = "nvim_treesiter#foldexpr()"

-- appearance
opt.linebreak = true
opt.showbreak = "+++"
opt.textwidth = 100
opt.showmatch = true
opt.wrap = false
opt.cursorline = true
opt.bg = "dark"
opt.termguicolors = false

vim.highlight.on_yank({
	higroup = "IncSearch",
	timeout = 150,
})
