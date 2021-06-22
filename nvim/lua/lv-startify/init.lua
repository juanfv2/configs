vim.g.startify_session_delete_buffers = 1
vim.g.startify_fortune_use_unicode    = 1
vim.g.startify_session_persistence    = 1
vim.g.startify_change_to_dir          = 1
vim.g.startify_change_to_vcs_root     = 0
vim.g.startify_enable_special         = 0
vim.g.startify_lists = {
     { type = 'sessions',  header = {'   Sessions'}       },
     { type = 'files',     header = {'   MRU'}            },
     { type = 'bookmarks', header = {'   Bookmarks'}      },
     { type = 'commands',  header = {'   Commands'}       }
}
vim.g.startify_bookmarks = {
             { z= '~/.zshrc' },
             { i= '~/.config/nvim/' },
}
