return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- -------------------------------------------------------------------------- --
    -- themes                                                                     --
    -- -------------------------------------------------------------------------- --
    use 'shaunsingh/nord.nvim'
    use 'morhetz/gruvbox'
    use 'joshdick/onedark.vim'

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

    use { 'leoluz/nvim-dap-go',
        requires = {
            'rcarriga/nvim-dap-ui',
            'mfussenegger/nvim-dap',
            'Pocco81/DAPInstall.nvim',
            'leoluz/nvim-dap-go',
        }
    }

    use 'lukas-reineke/indent-blankline.nvim'
    use 'folke/which-key.nvim'
    use 'mhinz/vim-startify'
    use 'github/copilot.vim'
    use 'vim-test/vim-test'
    use 'akinsho/toggleterm.nvim'
    
    -- -------------------------------------------------------------------------- --
    -- long live the pope                                                         --
    -- -------------------------------------------------------------------------- --
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use 'tpope/vim-dadbod'

    -- -------------------------------------------------------------------------- --
    -- db                                                                         --
    -- -------------------------------------------------------------------------- --
    use 'kristijanhusak/vim-dadbod-ui'
    
    use 'tpope/vim-dispatch'
    use 'tpope/vim-projectionist'

    -- -------------------------------------------------------------------------- --
    -- php                                                                        --
    -- -------------------------------------------------------------------------- --
    use 'phpactor/phpactor'
    use 'noahfrederick/vim-composer'
    use 'noahfrederick/vim-laravel'

end)
