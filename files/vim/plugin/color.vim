syntax enable   " enable syntax highlighting

set t_Co=256    " Use 256 colors to display correctly in console
set background=dark

silent! colo solarized
hi Normal ctermfg=7     " brighter color for the main text
hi NonText ctermbg=0    " same background as ColorColumn

"" light colorschemes
"silent! colo tangolight
"silent! colo tutticolori
"silent! colo donbass

"" dark colorschemes
"silent! colo vividchalk
"silent! colo oceandeep
"silent! colo blackboard2
"silent! colo Monokai
"silent! colo molokai


" Highlight text columns 81-200 to mark the 80 columns boundary. 
let &colorcolumn=join(range(81,200),",")

" ctermbg=232 is black, and 233 is slightly lighter than black.
"hi ColorColumn ctermbg=233
"hi NonText ctermbg=233
