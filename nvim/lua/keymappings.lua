local map = vim.api.nvim_set_keymap

-- map the leader key
map("n", "<Space>", "", {})
vim.g.mapleader = " " -- 'vim.g' sets global variables

local options = {
	noremap = true,
	silent = true,
	nowait = true,
}

-- -------------------------------------------------------------------------- --
-- normal                                                                     --
-- -------------------------------------------------------------------------- --

map("n", "-1", ":nohlsearch<cr>", options)
map("n", "-2", ":set rnu!<cr>", options)

map("n", "<leader>fd", ":lua vim.lsp.buf.format { async = true }<CR>", options)

map("n", "<leader><esc>", ":nohlsearch<cr>", options)
map("n", "<leader>y", '"*y', options)
map("n", "<leader>p", '"*p', options)
map("n", "<leader>w", ":w<cr>", options)
map("n", "<leader>q", ":q<cr>", options)
map("n", "ww¡", ":%y<cr>", options)
map("n", "ww'", "ggVGp", options)
map("n", "ww0", ":%d<cr>", options)
map("i", "jj", "<ESC>", options)
-- map("i", "Âµ", 'copilot#Accept("<CR>")', options)
-- alt-m == Âµ

-- <alt>j ¶
-- <alt>k §
-- #1: Move text
map("n", "¶", ":m .+1<cr>==", options)
map("n", "§", ":m .-2<cr>==", options)
map("i", "¶", "<cr>:m .+1<cr>==gi", options)
map("i", "§", "<cr>:m .-2<cr>==gi", options)
map("v", "¶", ":m '>+1<cr>gv=gv", options)
map("v", "§", ":m '>-2<cr>gv=gv", options)

-- #2: Jump list mutations
map("n", "<expr> k", "(v:count > 5 ? 'm'' . v:count : '') . 'k'", options)
map("n", "<expr> j", "(v:count > 5 ? 'm'' . v:count : '') . 'j'", options)

-- #3: Undo break points
map("i", ",", ",<c-g>u", options)
map("i", ".", ".<c-g>u", options)
map("i", "!", "!<c-g>u", options)
map("i", "?", "?<c-g>u", options)

-- #4: Keeping it centered
map("n", "n", "nzzzv", options)
map("n", "N", "Nzzzv", options)
-- map("n", "J", "mzJ`z", options)

-- #5: set Y to duplicate lines, works in visual mode as well.
map("n", "00", "yyp", options)
map("v", "00", "y`>pgv", options)

-- change behave vim for Y
map("n", "Y", "y$", options)
-- add semi-colon to end of line
map("i", "jk", "<c-o>A;<esc>", options)
map("n", "jk", "A;<esc>", options)

map("v", "<", "<gv", options)
map("v", ">", ">gv", options)

-- hard mode
map("n", "mh", ":call HardMode()<cr>", options)
map("n", "me", ":call EasyMode()<cr>", options)

-- -------------------------------------------------------------------------- --
-- php                                                                        --
-- -------------------------------------------------------------------------- --

map("n", "fl8", ":EnableFastPHPFolds<cr>", options)
map("n", "fl9", ":EnablePHPFolds<cr>", options)
map("n", "fl0", ":DisablePHPFolds<cr>", options)

-- -------------------------------------------------------------------------- --
-- Resize with arrows                                                         --
-- -------------------------------------------------------------------------- --

map("n", "<c-n>", ":resize -2<CR>", options)
map("n", "<c-m>", ":resize +2<CR>", options)
map("n", "<c-N>", ":vertical resize -2<CR>", options)
map("n", "<c-M>", ":vertical resize +2<CR>", options)

-- -------------------------------------------------------------------------- --
-- navigation                                                                 --
-- -------------------------------------------------------------------------- --

-- Better window navigation
map("n", "<c-h>", "<c-w>h", options)
map("n", "<c-j>", "<c-w>j", options)
map("n", "<c-k>", "<c-w>k", options)
map("n", "<c-l>", "<c-w>l", options)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", options)
map("n", "<S-h>", ":bprevious<CR>", options)
map("n", "<c-a>", ":w! <bar> %bd <bar> e# <bar> bd# <CR> <bar> ''", options)
map("n", "<c-x>", ":bd!<cr>", options)

-- -------------------------------------------------------------------------- --
-- projects                                                                   --
-- -------------------------------------------------------------------------- --

map("n", "j<", ":Startify<cr>", options)
map("n", "ñ", ":Startify<cr>", options)

-- -------------------------------------------------------------------------- --
-- NvimTree                                                                   --
-- -------------------------------------------------------------------------- --

map("n", "<leader>ee", ":NvimTreeToggle<CR>", options)
map("n", "<leader>oo", ":NvimTreeFocus<CR>", options)
map("n", "je", ":NvimTreeFindFile<cr>", options)
map("n", "j1", ":NvimTreeToggle<cr>", options)

-- -------------------------------------------------------------------------- --
-- Telescope                                                                  --
-- -------------------------------------------------------------------------- --

map("n", "j2", ":Telescope find_files<CR>", options)
map("n", "jj2", ":Telescope find_files hidden=true no_ignore=true<CR>", options)
map("n", "j3", ":Telescope live_grep<cr>", options)
map("n", "j4", ":Telescope buffers<cr>", options)
map("n", "j5", ":Telescope help_tags<cr>", options)
map("n", "j6", ":Telescope git_status<cr>", options)
map("n", "j7", ":Telescope git_commits<cr>", options)
map("n", "j8", ":Telescope flutter commands<cr>", options)
map("n", "j9", ":Telescope laravel<cr>", options)
-- map('n', 'j4', ':GBranches', options)

map("n", "<leader>fw", ":Telescope live_grep<CR>", options)
map("n", "<leader>fb", ":Telescope buffers<CR>", options)
map("n", "<leader>fh", ":Telescope help_tags<CR>", options)
map("n", "<leader>gt", ":Telescope git_status<CR>", options)
map("n", "<leader>gc", ":Telescope git_commits<CR>", options)
map("n", "<leader>fo", ":Telescope oldfiles<CR>", options)

-- -------------------------------------------------------------------------- --
-- Test                                                                       --
-- -------------------------------------------------------------------------- --
map("n", "tt", ":TestNearest<CR>", options)
map("n", "tf", ":TestFile<CR>", options)
map("n", "ts", ":TestSuite<CR>", options)
map("n", "tl", ":TestLast<CR>", options)
map("n", "tv", ":TestVisit<CR>", options)

-- -------------------------------------------------------------------------- --
-- Terminal                                                                   --
-- -------------------------------------------------------------------------- --
map("n", "<c-t>", ":ToggleTerm<CR>", options)
map("t", "<c-t><c-t>", "<C-\\><C-n><c-w>k", options)
map("t", "<esc><esc>", "<C-\\><C-n>:ToggleTerm<CR>", options)
map("t", "<leader>.", ":bd!<cr>", options)

-- -------------------------------------------------------------------------- --
-- git                                                                        --
-- -------------------------------------------------------------------------- --
map("n", "<leader>gh", ":Git<cr>", options)
map("n", "<leader>gaa", ":Git add .<cr>", options)
map("n", "<leader>gp", ":Git push<cr>", options)
map("n", "<leader>gl", ":Git pull<cr>", options)
map("n", "<leader>fe", ":Git fetch --all -p<cr>", options)
map("n", "<leader>ggl", ":diffget //3", options)
map("n", "<leader>ggr", ":diffget //2", options)


-- https://gist.github.com/mikaelz/38600d22b716b39b031165cd6d201a67

-- -------------------------------------------------------------------------- --
-- DAP (Debug Adapter Protocol)                                               --
-- -------------------------------------------------------------------------- --

map("n", "<F9>", ":DapToggleBreakpoint<CR>", options)
map("n", "<F5>", ":DapContinue<CR>", options)
map("n", "<F6>", ":DapTerminate<CR>:lua require'dapui'.close()<CR>", options)
map("n", "<F10>", ":DapStepOver<CR>", options)
map("n", "<F11>", ":DapStepInto<CR>", options)
map("n", "<S-F11>", ":DapStepOut<CR>", options)
map("n", "<F3>", ":lua require'dap'.run_last()<CR>", options)
-- salir de la depuración (debug off, repl off, ui off, clear inline text)
map(
	"n",
	"<F12>",
	":lua require'dap'.close()<CR>:lua require'dap.repl'.close()<CR>:lua require'dapui'.close()<CR>:DapVirtualTextForceRefresh<CR>",
	options
)
-- mostrar u ocultar la interfaz de depuración
map("n", "<leader>du", ":lua require'dapui'.toggle()<CR>", options)

-- :LspStop and :LspRestart only affect servers managed by nvim-lspconfig, so they won't do anything to null-ls.
-- Assuming you've set up formatting on save via an autocommand,
-- you can skip formatting on a single write by using :noautocmd w
-- (short form :noa w).
