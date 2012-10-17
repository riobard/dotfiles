autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist
autocmd FileType go autocmd BufWritePre <buffer> Fmt
