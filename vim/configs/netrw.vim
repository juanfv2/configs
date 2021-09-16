" https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f
" 
" https://shapeshed.com/vim-netrw/
"

let g:netrw_localrmdir='rm -r'

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" augroup ProjectDrawer
"     autocmd!
"     autocmd VimEnter * :Vexplore
" augroup END

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction


" QUICK REFERENCE: MAPS				*netrw-browse-maps* {{{2
" >
" 	  ---			-----------------			----
" 	  Map			Quick Explanation			Link
" 	  ---			-----------------			----
" <	 <F1>	Causes Netrw to issue help
" 	 <cr>	Netrw will enter the directory or read the file      |netrw-cr|
" 	 <del>	Netrw will attempt to remove the file/directory      |netrw-del|
" 	 <c-h>	Edit file hiding list                                |netrw-ctrl-h|
" 	 <c-l>	Causes Netrw to refresh the directory listing        |netrw-ctrl-l|
" 	 <c-r>	Browse using a gvim server                           |netrw-ctrl-r|
" 	 <c-tab> Shrink/expand a netrw/explore window                |netrw-c-tab|
" 	   -	Makes Netrw go up one directory                      |netrw--|
" 	   a	Cycles between normal display,                       |netrw-a|
" 	    	hiding (suppress display of files matching g:netrw_list_hide)
" 	    	and showing (display only files which match g:netrw_list_hide)
" 	   cd	Make browsing directory the current directory        |netrw-cd|
" 	   C	Setting the editing window                           |netrw-C|
" 	   d	Make a directory                                     |netrw-d|
" 	   D	Attempt to remove the file(s)/directory(ies)         |netrw-D|
" 	   gb	Go to previous bookmarked directory                  |netrw-gb|
" 	   gd	Force treatment as directory                         |netrw-gd|
" 	   gf	Force treatment as file                              |netrw-gf|
" 	   gh	Quick hide/unhide of dot-files                       |netrw-gh|
" 	   gn	Make top of tree the directory below the cursor      |netrw-gn|
" 	   i	Cycle between thin, long, wide, and tree listings    |netrw-i|
" 	   I	Toggle the displaying of the banner                  |netrw-I|
" 	   mb	Bookmark current directory                           |netrw-mb|
" 	   mc	Copy marked files to marked-file target directory    |netrw-mc|
" 	   md	Apply diff to marked files (up to 3)                 |netrw-md|
" 	   me	Place marked files on arg list and edit them         |netrw-me|
" 	   mf	Mark a file                                          |netrw-mf|
" 	   mF	Unmark files                                         |netrw-mF|
" 	   mg	Apply vimgrep to marked files                        |netrw-mg|
" 	   mh	Toggle marked file suffices' presence on hiding list |netrw-mh|
" 	   mm	Move marked files to marked-file target directory    |netrw-mm|
" 	   mp	Print marked files                                   |netrw-mp|
" 	   mr	Mark files using a shell-style |regexp|                |netrw-mr|
" 	   mt	Current browsing directory becomes markfile target   |netrw-mt|
" 	   mT	Apply ctags to marked files                          |netrw-mT|
" 	   mu	Unmark all marked files                              |netrw-mu|
" 	   mv	Apply arbitrary vim   command to marked files        |netrw-mv|
" 	   mx	Apply arbitrary shell command to marked files        |netrw-mx|
" 	   mX	Apply arbitrary shell command to marked files en bloc|netrw-mX|
" 	   mz	Compress/decompress marked files                     |netrw-mz|
" 	   o	Enter the file/directory under the cursor in a new   |netrw-o|
" 	    	browser window.  A horizontal split is used.
" 	   O	Obtain a file specified by cursor                    |netrw-O|
" 	   p	Preview the file                                     |netrw-p|
" " 	   P	Browse in the previously used window                 |netrw-P|
" 	   qb	List bookmarked directories and history              |netrw-qb|
" 	   qf	Display information on file                          |netrw-qf|
" 	   qF	Mark files using a quickfix list                     |netrw-qF|
" 	   qL	Mark files using a |location-list|                     |netrw-qL|
" 	   r	Reverse sorting order                                |netrw-r|
" 	   R	Rename the designated file(s)/directory(ies)         |netrw-R|
" 	   s	Select sorting style: by name, time, or file size    |netrw-s|
" 	   S	Specify suffix priority for name-sorting             |netrw-S|
" 	   t	Enter the file/directory under the cursor in a new tab|netrw-t|
" 	   u	Change to recently-visited directory                 |netrw-u|
" 	   U	Change to subsequently-visited directory             |netrw-U|
" 	   v	Enter the file/directory under the cursor in a new   |netrw-v|
" 	    	browser window.  A vertical split is used.
" 	   x	View file with an associated program                 |netrw-x|
" 	   X	Execute filename under cursor via |system()|           |netrw-X|

" 	   %	Open a new file in netrw's current directory         |netrw-%|

