
" Enable limited line numbering
" It’s often useful to know where you are in a buffer, but full line 
" numbering is distracting. Setting the option below is a good compromise:
set ruler
" Now in the bottom right corner of the status line there will be something 
" like: 529, 35 68%, representing line 529, column 35, about 68% of the way to
" the end. 
"
set laststatus=2    " always show the status line
set statusline=%{fugitive#statusline()}\ %<%F\ %y%h%m%r%=%-14.(%l,%c%V%)\ [%P/%L]
set titlestring=%<%F
