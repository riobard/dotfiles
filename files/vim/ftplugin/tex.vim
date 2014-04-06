" Make Skim auto reloads documents without confirmation
" $ defaults write -app Skim SKAutoReloadFileUpdate -boolean true 
let g:LatexBox_viewer = 'open -a Skim'
"let g:LatexBox_latexmk_preview_continuously = 1
"let g:LatexBox_latexmk_options = '-lualatex'
let g:LatexBox_quickfix = 2
let g:LatexBox_autojump = 1
let g:LatexBox_build_dir = '.latex'
let g:LatexBox_latexmk_options = '-outdir=' . g:LatexBox_build_dir

autocmd BufWritePost <buffer> Latexmk

map <buffer> <LocalLeader>m :Latexmk<Enter>
map <buffer> <LocalLeader>v :LatexView<Enter>

setlocal guifont=Consolas:h14
