local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables

local options = {
    noremap = true,
    silent = true,
    nowait = true
}

map('n', 'jº', ':Startify<cr>', options)
map('n', 'j1', ':NvimTreeToggle<cr>', options)
map('n', 'j2', ':Telescope find_files<cr>', options)
map('n', 'j3', ':Telescope live_grep<cr>', options)
map('n', 'j4', ':Telescope buffers<cr>', options)
map('n', 'j5', ':Telescope help_tags<cr>', options)
-- map('n', 'j4', ':GBranches', options)
map('n', 'f0', ':set rnu!', options)
map('n', 'f1', '', options)

map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader>w', ':w<cr>', options)
map('n', '<leader>q', ':q<cr>', options)
map('n', 'je', ':NvimTreeFindFile<cr>', options)
map('i', 'jj', '<ESC>', options)
map('n', 'ya', ':%y<cr>', options)
map('n', 'da', ':%d<cr>', options)
map('n', 'ra', 'ggVGp', options)
map('n', 'ñ', ':Startify<cr>', options)
map('n', 'f', ':nohlsearch<cr>', options)

-- navigations
map('n', '<TAB>',   ':bnext<cr>', options)
map('n', '<S-TAB>', ':bprev<cr>', options)
map('n', '1<tab>',   ':w! <bar> %bd <bar> e# <bar> bd# <CR> <bar> \'"', options)
map('n', 'º<tab>',   ':bd<cr>', options)
-- map('n', '<c-x>', ':bufdo bd<cr>', options)
-- map('n', '<c-x>', ':bp \\|bd #<cr>', options)

map('n', '<c-h>', '<c-w>h', options)
map('n', '<c-j>', '<c-w>j', options)
map('n', '<c-k>', '<c-w>k', options)
map('n', '<c-l>', '<c-w>l', options)

-- <alt>j ¶
-- <alt>k §
-- #1: Move text
map('n', '¶', ':m .+1<cr>==', options)
map('n', '§', ':m .-2<cr>==', options)
map('i', '¶', '<cr>:m .+1<cr>==gi', options)
map('i', '§', '<cr>:m .-2<cr>==gi', options)
map('v', '¶', ':m \'>+1<cr>gv=gv', options)
map('v', '§', ':m \'>-2<cr>gv=gv', options)

-- #2: Jump list mutations
map('n', '<expr> k', '(v:count > 5 ? \"m\'\" . v:count : \"\") . \'k\'', options)
map('n', '<expr> j', '(v:count > 5 ? \"m\'\" . v:count : \"\") . \'j\'', options)

-- #3: Undo break points
map('i', ',', ',<c-g>u', options)
map('i', '.', '.<c-g>u', options)
map('i', '!', '!<c-g>u', options)
map('i', '?', '?<c-g>u', options)

-- #4: Keeping it centered
map('n', 'n', 'nzzzv', options)
map('n', 'N', 'Nzzzv', options)
map('n', 'J', 'mzJ`z', options)

-- #5: set Y to duplicate lines, works in visual mode as well.
map('n', '00', 'yyp', options)
map('v', '00', 'y`>pgv', options)

-- change behave vim for Y
map('n', 'Y', 'y$', options)
-- add semi-colon to end of line
map('i', 'jk', '<C-O>A; <ESC>', options)
map('n', 'jk', '$A; <ESC>', options)

map('v', '<', '<gv', options)
map('v', '>', '>gv', options)
