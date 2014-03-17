setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist

" run golint on save
"set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" run gofmt on save. (deprecated. gocode plugin does this already)
"autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Prefer goimports over gofmt
if system("which goimports") != ""
    let g:gofmt_command = "goimports"
endif


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
    " remove trailing { and replace with {…}
    let line = substitute(line, '{$', '{…}', 'g')
    " remove leading tabs
    let line = substitute(line, '^\t*', '', 'g')
    let indent = repeat(' ', indent(v:foldstart))
    let foldsize = v:foldend - v:foldstart
    let sizeTxt = ' ['.foldsize.' line'.(foldsize>1?'s':'').']'
    return indent.line.sizeTxt
endfunction

setlocal foldtext=GoFoldText()
