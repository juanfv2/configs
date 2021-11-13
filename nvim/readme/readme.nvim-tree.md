plugin, shortcuts, description
nvim-tree, <CR> or o on .., will cd in the above directory
nvim-tree, <C-]>, will cd in the directory under the cursor
nvim-tree,<BS>, will close current opened directory or parent
nvim-tree,type a, to add a file. Adding a directory requires leaving a leading / at the end of the path.  you can add multiple directories by doing foo/bar/baz/f and it will add foo bar and baz directories and f as a file
nvim-tree,type r, to rename a file
nvim-tree,type <C-r>, to rename a file and omit the filename on input
nvim-tree,type x, to add/remove file/directory to cut clipboard
nvim-tree,type c, to add/remove file/directory to copy clipboard
nvim-tree,type y, will copy name to system clipboard
nvim-tree,type Y, will copy relative path to system clipboard
nvim-tree,type gy, will copy absolute path to system clipboard
nvim-tree,type p, to paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
nvim-tree,type d, to delete a file (will prompt for confirmation)
nvim-tree,type ]c, to go to next git item
nvim-tree,type [c, to go to prev git item
nvim-tree,type -, to navigate up to the parent directory of the current file/directory
nvim-tree,type s, to open a file with default system application or a folder with default file manager (if you want to change the command used to do it see :h nvim-tree.setup under system_open)
nvim-tree,"if the file is a directory, <CR>", will open the directory otherwise it will open the file in the buffer near the tree
nvim-tree,"if the file is a symlink, <CR>", will follow the symlink (if the target is a file)
nvim-tree,<C-v>, will open the file in a vertical split
nvim-tree,<C-x>, will open the file in a horizontal split
nvim-tree,<C-t>, will open the file in a new tab
nvim-tree,<Tab>, will open the file as a preview (keeps the cursor in the tree)
nvim-tree,I, will toggle visibility of hidden folders / files
nvim-tree,H, will toggle visibility of dotfiles (files/folders starting with a .)
nvim-tree,R, will refresh the tree
nvim-tree,Double left click acts like <CR>
nvim-tree,Double right click acts like <C-]>