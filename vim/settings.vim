" basic settings " ""General"" General
syntax on
set number              " Show line numbers
set relativenumber      " Show relative numbers
set linebreak           " Break lines at word (requires Wrap lines)
set showbreak=+++       " Wrap-broken line prefix
set textwidth=100       " Line wrap (number of cols)
set showmatch           " Highlight matching brace
set spell               " Enable spell-checking
set spelllang=en,es
set visualbell          " Use visual bell (no beeping)

set ignorecase          " Always case-insensitive
set smartcase           " Enable smart-case search
set incsearch           " Searches for strings incrementally
set hlsearch            " Highlight all search results
set laststatus=0        " Always display the status line

set autoindent          " Auto-indent new lines
set expandtab           " Use spaces instead of tabs
set shiftwidth=4        " Number of auto-indent spaces
set smartindent         " Enable smart-indent
set smarttab            " Enable smart-tabs
set softtabstop=4       " Number of spaces per Tab

" "" Advanced
set ruler                               " Show row and column ruler information
set autowriteall                        " Auto-write all file changes

set pumheight=10                        " Makes popup menu smaller
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file

set termguicolors
set noswapfile
set undodir=~/.vim/undodir
set undofile

set t_Co=256
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set undolevels=1000                     " Number of undo levels
set backspace=indent,eol,start          " Backspace Behavior
set mouse=a                             " Enable your mouse
set clipboard=unnamed                   " Copy paste between vim and everything else
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object
set bg=dark
set fdm=manual
" indent
" syntax

colorscheme gruvbox


"  cambiar cursor en insert-mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[1 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END

