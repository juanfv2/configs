-- basic settings " ""General"" General
vim.cmd('syntax on')

vim.wo.number    = true
vim.o.rnu        = true
vim.o.linebreak  = true
vim.o.showbreak  = '+++'
vim.o.textwidth  = 100
vim.o.showmatch  = true
vim.o.spell      = true
vim.o.spelllang  = 'en,es'
vim.o.visualbell = true

vim.o.ignorecase = true
vim.o.smartcase  = false
vim.o.incsearch  = false
vim.o.hlsearch   = false
vim.o.laststatus = 0

vim.o.autoindent   = true
vim.bo.autoindent  = true
vim.o.expandtab    = true
vim.bo.expandtab   = true
vim.o.shiftwidth   = 4
vim.bo.shiftwidth  = 4
vim.bo.smartindent = true
vim.o.smarttab     = true
vim.o.softtabstop  = 4
vim.o.tabstop      = 4
vim.bo.tabstop     = 4

-- Advanced
-- vim.o.rules = true;
vim.o.autowriteall = true

vim.o.pumheight    = 10
vim.o.encoding     = 'utf-8'
vim.o.fileencoding = 'utf-8'

vim.o.termguicolors = true
vim.o.swapfile      = false
vim.o.undodir       = '~/.nvim/undodir'
vim.o.undofile      = true
-- set term=xterm-256color
-- vim.go.term          = 'xterm-256color'
vim.go.t_Co         = '256'
vim.o.showtabline   = 2
vim.o.backup        = false
vim.o.writebackup   = false
vim.o.updatetime    = 300
vim.o.timeoutlen    = 300
vim.o.undolevels    = 1000
vim.o.backspace     = "indent,eol,start"
vim.o.mouse         = "a"
vim.o.clipboard     = "unnamedplus"
vim.o.cmdheight     = 1
-- vim.o.iskeyword     = '-'

vim.o.shortmess     = vim.o.shortmess .. 'c'
vim.o.hidden        = true
vim.o.whichwrap     = 'b,s,<,>,[,],h,l'
vim.o.splitbelow    = true
vim.o.splitright    = true
vim.o.conceallevel  = 0
vim.o.showmode      = true
vim.o.scrolloff     = 8
vim.o.sidescrolloff = 5
vim.wo.wrap         = true
vim.o.cursorline    = true
vim.wo.signcolumn   = "yes"
vim.o.bg            = "dark"
vim.o.fdm           = "manual"
-- indent
-- syntax
vim.cmd('colorscheme nord')
-- vim.cmd[[colorscheme nord]]
-- Example config in lua
-- vim.g.nord_contrast = true
-- vim.g.nord_borders = false
-- vim.g.nord_disable_background = false
-- vim.g.nord_italic = false

-- -- Load the colorscheme
-- require('nord').set()
