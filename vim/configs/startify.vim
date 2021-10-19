let g:startify_session_autoload = 1
let g:startify_session_delete_buffers   = 1
let g:startify_fortune_use_unicode      = 1
let g:startify_session_persistence      = 1
let g:startify_change_to_dir            = 1
let g:startify_change_to_vcs_root       = 0
let g:startify_enable_special           = 0

let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       }
        \ ]

let g:startify_bookmarks = [
        \ { 'z': '~/.zshrc' },
        \ { 'v': '~/.config/vim/' }
        \ ]

" let s:skiplist = get(g:, 'startify_skiplist', [
"       \ 'COMMIT_EDITMSG',
"       \ $VIMRUNTIME .'/doc',
"       \ 'bundle/.*/doc',
"       \ ])

" autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif
" autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

" autocmd BufEnter * if line2byte('.') == -1 && len(tabpagebuflist()) == 1 | Startify | endif
