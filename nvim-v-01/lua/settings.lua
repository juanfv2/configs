vim.cmd('filetype plugin on')               -- syntax highlighting
vim.cmd('syntax on')                        -- syntax highlighting
vim.cmd('set iskeyword+=-')                 -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c')                 -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split')             -- Make substitution work in realtime
-- vim.cmd('set sessionoptions-=options')      -- Make substitution work in realtime
-- TERMINAL = vim.fn.expand('$TERMINAL')
-- vim.cmd('let &titleold="'..TERMINAL..'"')
vim.cmd('set whichwrap+=<,>,[,],h,l')       -- move to next line with theses keys

vim.cmd('set ts =4')                        -- Width of tab character
vim.cmd('set sts=4')                        -- Fine tunes the amount of white space to be added
vim.cmd('set sw =4')                        -- Determines the amount of whitespace to add in normal mode
vim.cmd('set expandtab')                    -- When this option is enabled, vi will use spaces instead of tabs

vim.o.hidden  = true                         -- Required to keep multiple buffers open multiple buffers
vim.wo.wrap   = true                         -- Display long lines as just one line
-- vim.o.title   = true
vim.wo.number = true                         -- set numbered lines
vim.o.splitbelow = true                      -- Horizontal splits will automatically be below
vim.wo.relativenumber = true                 -- set relative number
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.o.pumheight = 10                        -- Makes popup menu smaller
vim.o.fileencoding = "utf-8"                -- The encoding written to file
vim.o.cmdheight = 2                         -- More space for displaying messages
-- vim.cmd('set colorcolumn=99999')            -- fix indentline for now
vim.o.mouse = "a"                           -- Enable your mouse
-- vim.o.termguicolors = true               -- set term gui colors most terminals support this
vim.o.splitright = true                     -- Vertical splits will automatically be to the right
vim.o.t_Co = "256"                          -- Support 256 colors
vim.o.conceallevel = 0                      -- So that I can see `` in markdown files
vim.bo.smartindent = true                   -- Makes indenting smart
vim.wo.cursorline = true                    -- Enable highlighting of the current line
vim.o.showtabline = 2                       -- Always show tabs
vim.o.showmode = true                       -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false                        -- This is recommended by coc
vim.o.writebackup = false                   -- This is recommended by coc
vim.wo.signcolumn = "yes"                   -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300                      -- Faster completion
vim.o.timeoutlen = 500                      -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus"             -- Copy paste between vim and everything else
-- vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
-- vim.o.guifont = "Hack\\ Nerd\\ Font\\ Mono"
-- vim.o.guifont = "SauceCodePro Nerd Font:h17"
vim.o.guifont = "FiraCode Nerd Font:h17"

vim.cmd('set bg=dark')
-- vim.cmd('set autochdir')
vim.cmd('colorscheme ' .. "gruvbox")
-- vim.o.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"
vim.o.foldmethod = "indent"
-- spell languages
vim.cmd('set spell')
vim.cmd('set spelllang=en,es')




