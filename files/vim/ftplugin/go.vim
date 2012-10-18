if !empty($GOROOT)
    set rtp+=$GOROOT/misc/vim
endif

setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist

augroup gofmt
    autocmd!
    autocmd BufWritePre <buffer> Fmt
augroup END

"autocmd BufWritePre *.go Fmt
" For more details see http://stackoverflow.com/questions/10969366/vim-automatically-formatting-golang-source-code-when-saving
