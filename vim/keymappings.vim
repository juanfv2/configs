let mapleader = " "

inoremap jj <Esc>
nnoremap <silent><nowait> jº :Startify<CR>
nnoremap <silent><nowait> j1 :call ToggleNetrw()<CR>
nnoremap <silent><nowait> j2 :Files<CR>
nnoremap <silent><nowait> j3 :set rnu!<CR>
nnoremap <silent><nowait> ya :%y<CR>
nnoremap <silent><nowait> da :%d<CR>
nnoremap <silent><nowait> ra ggVGp<CR>
nnoremap <silent><nowait> fd :Format<CR>
nnoremap <leader><leader> :w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>ñ :Startify<CR>
nnoremap <leader>f :Files<CR>

nnoremap <TAB> :bnext<CR>               " TAB in general mode will move to text buffer
nnoremap <S-TAB> :bprevious<CR>         " SHIFT-TAB will go back

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l