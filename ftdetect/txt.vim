" Plain text filetype detect
au BufNewFile,BufRead *.txt,*.text {
    if &filetype == 'help'
        finish
    endif
    set filetype=txt
}
