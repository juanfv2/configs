function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap ppi <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap  ppi :call PhpInsertUse()<CR>

autocmd FileType php inoremap ppe <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap  ppe :call PhpExpandClass()<CR>

autocmd FileType php inoremap pps <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap  pps :call PhpSortUse()<CR>


