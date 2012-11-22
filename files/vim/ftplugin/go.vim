if !empty($GOROOT)
    set rtp+=$GOROOT/misc/vim
endif

setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist

augroup gofmt
    autocmd!
    "autocmd BufWritePre <buffer> Fmt
    autocmd BufWritePre *.go Fmt
    " For more details see http://stackoverflow.com/questions/10969366/vim-automatically-formatting-golang-source-code-when-saving
augroup END


" tagbar with gotags https://github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }


setlocal foldmethod=syntax

function! GoFoldText()
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    let line = substitute(line, '{\|/\*\|\*/\|{{{\d\=', '', 'g')
    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    "return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
    return line . "[" . foldedlinecount . " lines]"
endfunction

setlocal foldtext=GoFoldText()
