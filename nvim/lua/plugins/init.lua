return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	-- -------------------------------------------------------------------------- --
	-- themes                                                                     --
	-- -------------------------------------------------------------------------- --
	use("shaunsingh/nord.nvim")
	use("morhetz/gruvbox")
	use("joshdick/onedark.vim")
	use("tjdevries/colorbuddy.nvim")
	use("bkegley/gloombuddy")

	-- generics
	use("nvim-lua/plenary.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("machakann/vim-highlightedyank")
	use("cometsong/CommentFrame.vim")

	-- status-line
	use("nvim-lualine/lualine.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("akinsho/bufferline.nvim")
	use("p00f/nvim-ts-rainbow")
	use("windwp/nvim-ts-autotag")
	use("windwp/nvim-autopairs")

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	}) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	use("gpanders/editorconfig.nvim")

	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- use 'hrsh7th/cmp-cmdline'
	-- use 'hrsh7th/cmp-vsnip'
	-- use 'hrsh7th/vim-vsnip'
	-- use 'folke/which-key.nvim'

	use("lewis6991/gitsigns.nvim")

	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("Pocco81/dap-buddy.nvim")
	use("leoluz/nvim-dap-go")
	use("theHamsta/nvim-dap-virtual-text")

	use("lukas-reineke/indent-blankline.nvim")
	use("vim-test/vim-test")
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	-- navigation
	use("christoomey/vim-tmux-navigator")
	use("mhinz/vim-startify")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use("nvim-telescope/telescope.nvim")
	use("kyazdani42/nvim-tree.lua")

	-- -------------------------------------------------------------------------- --
	-- long live the pope                                                         --
	-- -------------------------------------------------------------------------- --
	use("tpope/vim-repeat")
	use("tpope/vim-surround")
	use("tpope/vim-fugitive")
	use("tpope/vim-commentary")
	use("tpope/vim-dadbod")

	-- -------------------------------------------------------------------------- --
	-- db                                                                         --
	-- -------------------------------------------------------------------------- --
	use("kristijanhusak/vim-dadbod-ui")

	use("tpope/vim-dispatch")
	use("tpope/vim-projectionist")

	-- -------------------------------------------------------------------------- --
	-- php                                                                        --
	-- -------------------------------------------------------------------------- --
	-- use 'phpactor/phpactor'
	-- use("noahfrederick/vim-composer")
	-- use("noahfrederick/vim-laravel")
	use("adalessa/laravel.nvim")
	use("rayburgemeestre/phpfolding.vim")

	use("akinsho/flutter-tools.nvim")

	-- learn nvim
	use("wikitopian/hardmode")
	use("ThePrimeagen/vim-be-good")
end)
