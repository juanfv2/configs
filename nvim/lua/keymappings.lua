local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables

local options = { noremap = true, silent = true, nowait = true }

-- -------------------------------------------------------------------------- --
-- normal                                                                     --
-- -------------------------------------------------------------------------- --

-- Better window navigation
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)

-- Resize with arrows
map('n', '<c-n>', '<cmd>resize -2<CR>', options)
map('n', '<c-m>', '<cmd>resize +2<CR>', options)
map('n', '<c-N>', '<cmd>vertical resize -2<CR>', options)
map('n', '<c-M>', '<cmd>vertical resize +2<CR>', options)

--
-- Navigate buffers
map('n', '<S-l>', '<cmd>bnext<CR>', options)
map('n', '<S-h>', '<cmd>bprevious<CR>', options)
map('n', '<c-a>', ":w! <bar> %bd <bar> e# <bar> bd# <CR> <bar> \''", options)
map('n', '<c-x>', ':bd!<cr>', options)

-- NvimTree
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', options)
map('n', '<leader>o', '<cmd>NvimTreeFocus<CR>', options)

-- Telescope
-- map('n', '<leader>ff', ':Telescope find_files hidden=false no_ignore=false<CR>', options)
map('n', '<leader>fw', '<cmd>Telescope live_grep<CR>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', options)
map('n', '<leader>gt', '<cmd>Telescope git_status<CR>', options)
map('n', '<leader>gc', '<cmd>Telescope git_commits<CR>', options)
map('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>', options)


map('n', 'j<', ':Startify<cr>', options)
map('n', 'j1', ':NvimTreeToggle<cr>', options)
map('n', 'j2', ':Telescope find_files hidden=true no_ignore=true<CR>', options)
map('n', 'j3', ':Telescope live_grep<cr>', options)
map('n', 'j4', ':Telescope buffers<cr>', options)
map('n', 'j5', ':Telescope help_tags<cr>', options)
map('n', 'j6', ':Telescope git_status<cr>', options)
map('n', 'j7', ':Telescope git_commits<cr>', options)
-- map('n', 'j4', ':GBranches', options)
map('n', 'fd', ':lua vim.lsp.buf.formatting()<CR>', options)
map('n', 'f0', ':set rnu!<cr>', options)
map('n', 'f9', ':nohlsearch<cr>', options)


map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader>w', ':w<cr>', options)
map('n', '<leader>q', ':q<cr>', options)
map('n', 'je', ':NvimTreeFindFile<cr>', options)
map('i', 'jj', '<ESC>', options)
map('n', 'ya', ':%y<cr>', options)
map('n', 'da', ':%d<cr>', options)
map('n', 'ra', 'ggVGp', options)
map('n', 'ñ', ':Startify<cr>', options)

-- navigations

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
map('n', '<expr> k', '(v:count > 5 ? \'m\'\' . v:count : \'\') . \'k\'', options)
map('n', '<expr> j', '(v:count > 5 ? \'m\'\' . v:count : \'\') . \'j\'', options)

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

-- Terminal
map('n', '<c-t>', ':ToggleTerm<CR>', options)
map('t', '<leader>.', ':bd!<cr>', options)
map('t', '<leader><Esc>', '<C-\\><C-n>', options)

-- -------------------------------------------------------------------------- --
-- git                                                                        --
-- -------------------------------------------------------------------------- --

map('n', 'ga', ':Git add .', options)
map('n', 'gp', ':Git push', options)
map('n', 'gl', ':Git pull', options)
map('n', 'fea', ':Git fetch --all -p', options)


