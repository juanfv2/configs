source $NVIMDIR/plugins.vim
source $NVIMDIR/settings.vim
source $NVIMDIR/keymappings.vim

for f in split(glob($NVIMDIR .'/configs/*.vim'), '\n')
    exe 'source' f
endfo