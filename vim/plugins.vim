" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

    " finders:
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'mhinz/vim-startify'
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    
    " languages:
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'yaegassy/coc-intelephense'
    Plug 'arnaud-lb/vim-php-namespace'
    Plug 'editorconfig/editorconfig-vim'   
    Plug 'honza/vim-snippets'

    " git:
    Plug 'airblade/vim-gitgutter'
    
    " themes:
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " tpope:
    Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
call plug#end()
