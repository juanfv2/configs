return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim'
    use 'morhetz/gruvbox'

    use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'onsails/lspkind-nvim'

    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, }
    use 'folke/which-key.nvim'
    use 'mhinz/vim-startify'
    use 'phpactor/phpactor'
    use 'github/copilot.vim'


    use 'tpope/ragtag'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'

end)
