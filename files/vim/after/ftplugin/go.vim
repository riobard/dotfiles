setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist

" Prefer goimports over gofmt
let g:go_fmt_command = "goimports"


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

setlocal foldtext=GoFoldText() nofoldenable


nnoremap <localleader>d :tab split <CR>:exe "GoDef"<CR>
nnoremap <localleader>ds :sp <CR>:exe "GoDef"<CR>
nnoremap <localleader>dv :vsp <CR>:exe "GoDef" <CR>

nnoremap <localleader>i :GoInstall<CR>
nnoremap <localleader>r :GoRun<CR>
nnoremap <localleader>t :GoTest<CR>
