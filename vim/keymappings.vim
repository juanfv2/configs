let mapleader = " "

inoremap jj <Esc>
nnoremap <silent><nowait> jº :Startify<CR>
nnoremap <silent><nowait> j1 :call ToggleNetrw()<CR>
nnoremap <silent><nowait> j2 :Files<CR>
nnoremap <silent><nowait> j3 :Rg<CR>
nnoremap <silent><nowait> j4 :GBranches<CR>
nnoremap <silent><nowait> f0 :set rnu!<CR>
nnoremap <silent><nowait> fa :Fold<CR>
nnoremap <silent><nowait> fd :Format<CR>
nnoremap <silent><nowait> ya :%y<CR>
nnoremap <silent><nowait> da :%d<CR>
nnoremap <silent><nowait> ra ggVGp<CR>
nnoremap <leader><leader> :w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>ñ :Startify<CR>
nnoremap <leader>f :Files<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
nnoremap <c-x> :bp \|bd #<cr>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" #5: set Y to duplicate lines, works in visual mode as well.
nnoremap YY yyp
vnoremap YY y`>pgv

" #5 behave vim
nnoremap Y y$

" #4: Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" #3: Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" #2: Jump list mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
 
" <alt>j ¶
" <alt>k §
"
" #1: Move text
"
"   
nnoremap ¶ :m .+1<CR>==
nnoremap § :m .-2<CR>==
inoremap ¶ <Esc>:m .+1<CR>==gi
inoremap § <Esc>:m .-2<CR>==gi
vnoremap ¶ :m '>+1<CR>gv=gv
vnoremap § :m '<-2<CR>gv=gv

" add semi-colon to end of line
inoremap ,, <C-O>A; <ESC>
nnoremap ,, $A; <ESC>

" close all files except own
nnoremap <silent><nowait> <leader>ll :w! <bar> %bd <bar> e# <bar> bd# <CR> <bar> '"
  

nnoremap <leader>hh :let @+=expand("%") . ':' . line(".")<CR>
