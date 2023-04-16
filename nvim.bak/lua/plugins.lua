local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("morhetz/gruvbox")
	use("lukas-reineke/indent-blankline.nvim")
	use("akinsho/bufferline.nvim")
	use("nvim-lualine/lualine.nvim")
	use("machakann/vim-highlightedyank")
	use("bluz71/vim-nightfly-colors")

	-- generics
	use("vim-scripts/LargeFile")
	use("nvim-lua/plenary.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("vim-test/vim-test")
	use("lewis6991/gitsigns.nvim")

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	use("gpanders/editorconfig.nvim")

	-- autocompletion
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- navigation
	use("preservim/vimux")
	use("christoomey/vim-tmux-navigator")
	use("mhinz/vim-startify")
	use("nvim-telescope/telescope.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("Pocco81/dap-buddy.nvim")
	use("leoluz/nvim-dap-go")
	use("theHamsta/nvim-dap-virtual-text")
	-- -------------------------------------------------------------------------- --
	-- long live the pope                                                         --
	-- -------------------------------------------------------------------------- --
	use("tpope/vim-repeat")
	use("tpope/vim-surround")
	use("tpope/vim-fugitive")
	use("tpope/vim-commentary")
	use("tpope/vim-dadbod")

	-- -------------------------------------------------------------------------- --
	-- php                                                                        -
	-- -------------------------------------------------------------------------- --
	-- use 'phpactor/phpactor'
	-- use("noahfrederick/vim-composer")
	-- use("noahfrederick/vim-laravel")
	use("adalessa/laravel.nvim")
	use("rayburgemeestre/phpfolding.vim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
