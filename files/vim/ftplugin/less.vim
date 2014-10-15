function! less#compile() 
    let infile = shellescape(expand('%:p'))
    let outfile = shellescape(expand('%:p:r').'.css')
    let out = system('lessc '.infile.'>'.outfile)
    if v:shell_error == 0 
        echo "compiled ".expand('%').' to '.expand('%:r').'.css'
    else
        echo "failed to compile ".infile
    endif
endfunction

nnoremap <localleader>c :call less#compile()<CR>
