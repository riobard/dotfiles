" This is a simple script. It extends the syntax highlighting to
" highlight each matching set of parens in different colors, to make
" it visually obvious what matches which.

" Obviously, most useful when working with lisp. But it's also nice othe
" times.

" I don't intend to maintain this script. I hacked it together for my
" own purposes, and it is sufficient to the day. If you want to improve it,
" knock yourself out.

" This file is public domain.


" define colors. Note that the one numbered '16' is the outermost pair,
" keep that in mind if you want to change the colors.
" Also, if this script doesn't work on your terminal, you may need to add
" guifg=xx or ever termfg=, though what good this script will do on a 
" black and white terminal I don't know.
hi level01c  ctermfg=brown               guifg=brown
hi level02c  ctermfg=Darkblue            guifg=Darkblue
hi level03c  ctermfg=darkgray            guifg=darkgray
hi level04c  ctermfg=darkgreen           guifg=darkgreen
hi level05c  ctermfg=darkcyan            guifg=darkcyan
hi level06c  ctermfg=darkred             guifg=darkred
hi level07c  ctermfg=darkmagenta         guifg=darkmagenta
hi level08c  ctermfg=brown               guifg=brown
hi level09c  ctermfg=gray                guifg=gray
hi level10c  ctermfg=black               guifg=black
hi level11c  ctermfg=darkmagenta         guifg=darkmagenta
hi level12c  ctermfg=Darkblue            guifg=Darkblue
hi level13c  ctermfg=darkgreen           guifg=darkgreen
hi level14c  ctermfg=darkcyan            guifg=darkcyan
hi level15c  ctermfg=darkred             guifg=darkred
hi level16c  ctermfg=red                 guifg=red



" These are the regions for each pair.
" This could be improved, perhaps, by makeing them match [ and { also,
" but I'm not going to take the time to figure out haw to make the
" end pattern match only the proper type.
syn region level01 matchgroup=level01c start=/(/ end=/)/ contains=TOP,level01,level02,level03,level04,level05,level06,level07,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level02 matchgroup=level02c start=/(/ end=/)/ contains=TOP,level02,level03,level04,level05,level06,level07,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level03 matchgroup=level03c start=/(/ end=/)/ contains=TOP,level03,level04,level05,level06,level07,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level04 matchgroup=level04c start=/(/ end=/)/ contains=TOP,level04,level05,level06,level07,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level05 matchgroup=level05c start=/(/ end=/)/ contains=TOP,level05,level06,level07,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level06 matchgroup=level06c start=/(/ end=/)/ contains=TOP,level06,level07,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level07 matchgroup=level07c start=/(/ end=/)/ contains=TOP,level07,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level08 matchgroup=level08c start=/(/ end=/)/ contains=TOP,level08,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level09 matchgroup=level09c start=/(/ end=/)/ contains=TOP,level09,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level10 matchgroup=level10c start=/(/ end=/)/ contains=TOP,level10,level11,level12,level13,level14,level15,level16,NoInParens
syn region level11 matchgroup=level11c start=/(/ end=/)/ contains=TOP,level11,level12,level13,level14,level15,level16,NoInParens
syn region level12 matchgroup=level12c start=/(/ end=/)/ contains=TOP,level12,level13,level14,level15,level16,NoInParens
syn region level13 matchgroup=level13c start=/(/ end=/)/ contains=TOP,level13,level14,level15,level16,NoInParens
syn region level14 matchgroup=level14c start=/(/ end=/)/ contains=TOP,level14,level15,level16,NoInParens
syn region level15 matchgroup=level15c start=/(/ end=/)/ contains=TOP,level15,level16,NoInParens
syn region level16 matchgroup=level16c start=/(/ end=/)/ contains=TOP,level16,NoInParens




" square brackets

hi level01sc ctermfg=brown               guifg=brown
hi level02sc ctermfg=Darkblue            guifg=Darkblue
hi level03sc ctermfg=darkgray            guifg=darkgray
hi level04sc ctermfg=darkgreen           guifg=darkgreen
hi level05sc ctermfg=darkcyan            guifg=darkcyan
hi level06sc ctermfg=darkred             guifg=darkred
hi level07sc ctermfg=darkmagenta         guifg=darkmagenta
hi level08sc ctermfg=brown               guifg=brown
hi level09sc ctermfg=gray                guifg=gray
hi level10sc ctermfg=black               guifg=black
hi level11sc ctermfg=darkmagenta         guifg=darkmagenta
hi level12sc ctermfg=Darkblue            guifg=Darkblue
hi level13sc ctermfg=darkgreen           guifg=darkgreen
hi level14sc ctermfg=darkcyan            guifg=darkcyan
hi level15sc ctermfg=darkred             guifg=darkred
hi level16sc ctermfg=red                 guifg=red

syn region level01s matchgroup=level01sc start=/\[/ end=/\]/ contains=TOP,level01s,level02s,level03s,level04s,level05s,level06s,level07s,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level02s matchgroup=level02sc start=/\[/ end=/\]/ contains=TOP,level02s,level03s,level04s,level05s,level06s,level07s,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level03s matchgroup=level03sc start=/\[/ end=/\]/ contains=TOP,level03s,level04s,level05s,level06s,level07s,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level04s matchgroup=level04sc start=/\[/ end=/\]/ contains=TOP,level04s,level05s,level06s,level07s,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level05s matchgroup=level05sc start=/\[/ end=/\]/ contains=TOP,level05s,level06s,level07s,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level06s matchgroup=level06sc start=/\[/ end=/\]/ contains=TOP,level06s,level07s,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level07s matchgroup=level07sc start=/\[/ end=/\]/ contains=TOP,level07s,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level08s matchgroup=level08sc start=/\[/ end=/\]/ contains=TOP,level08s,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level09s matchgroup=level09sc start=/\[/ end=/\]/ contains=TOP,level09s,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level10s matchgroup=level10sc start=/\[/ end=/\]/ contains=TOP,level10s,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level11s matchgroup=level11sc start=/\[/ end=/\]/ contains=TOP,level11s,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level12s matchgroup=level12sc start=/\[/ end=/\]/ contains=TOP,level12s,level13s,level14s,level15s,level16s,NoInParens
syn region level13s matchgroup=level13sc start=/\[/ end=/\]/ contains=TOP,level13s,level14s,level15s,level16s,NoInParens
syn region level14s matchgroup=level14sc start=/\[/ end=/\]/ contains=TOP,level14s,level15s,level16s,NoInParens
syn region level15s matchgroup=level15sc start=/\[/ end=/\]/ contains=TOP,level15s,level16s,NoInParens
syn region level16s matchgroup=level16sc start=/\[/ end=/\]/ contains=TOP,level16s,NoInParens


" curly braces
"
"hi level01ac ctermfg=brown               guifg=brown
"hi level02ac ctermfg=Darkblue            guifg=Darkblue
"hi level03ac ctermfg=darkgray            guifg=darkgray
"hi level04ac ctermfg=darkgreen           guifg=darkgreen
"hi level05ac ctermfg=darkcyan            guifg=darkcyan
"hi level06ac ctermfg=darkred             guifg=darkred
"hi level07ac ctermfg=darkmagenta         guifg=darkmagenta
"hi level08ac ctermfg=brown               guifg=brown
"hi level09ac ctermfg=gray                guifg=gray
"hi level10ac ctermfg=black               guifg=black
"hi level11ac ctermfg=darkmagenta         guifg=darkmagenta
"hi level12ac ctermfg=Darkblue            guifg=Darkblue
"hi level13ac ctermfg=darkgreen           guifg=darkgreen
"hi level14ac ctermfg=darkcyan            guifg=darkcyan
"hi level15ac ctermfg=darkred             guifg=darkred
"hi level16ac ctermfg=red                 guifg=red
"
"syn region level01a matchgroup=level01ac start=/{/ end=/}/ contains=TOP,level01a,level02a,level03a,level04a,level05a,level06a,level07a,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level02a matchgroup=level02ac start=/{/ end=/}/ contains=TOP,level02a,level03a,level04a,level05a,level06a,level07a,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level03a matchgroup=level03ac start=/{/ end=/}/ contains=TOP,level03a,level04a,level05a,level06a,level07a,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level04a matchgroup=level04ac start=/{/ end=/}/ contains=TOP,level04a,level05a,level06a,level07a,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level05a matchgroup=level05ac start=/{/ end=/}/ contains=TOP,level05a,level06a,level07a,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level06a matchgroup=level06ac start=/{/ end=/}/ contains=TOP,level06a,level07a,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level07a matchgroup=level07ac start=/{/ end=/}/ contains=TOP,level07a,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level08a matchgroup=level08ac start=/{/ end=/}/ contains=TOP,level08a,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level09a matchgroup=level09ac start=/{/ end=/}/ contains=TOP,level09a,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level10a matchgroup=level10ac start=/{/ end=/}/ contains=TOP,level10a,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level11a matchgroup=level11ac start=/{/ end=/}/ contains=TOP,level11a,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level12a matchgroup=level12ac start=/{/ end=/}/ contains=TOP,level12a,level13a,level14a,level15a,level16a,NoInParens
"syn region level13a matchgroup=level13ac start=/{/ end=/}/ contains=TOP,level13a,level14a,level15a,level16a,NoInParens
"syn region level14a matchgroup=level14ac start=/{/ end=/}/ contains=TOP,level14a,level15a,level16a,NoInParens
"syn region level15a matchgroup=level15ac start=/{/ end=/}/ contains=TOP,level15a,level16a,NoInParens
"syn region level16a matchgroup=level16ac start=/{/ end=/}/ contains=TOP,level16a,NoInParens