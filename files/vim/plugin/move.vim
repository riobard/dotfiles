" Move by screen line
" Normal node
map <Up>    gk
map <Down>  gj
" Insert mode
imap <Up>   <C-o>gk
imap <Down> <C-o>gj
" Visual mode
vmap <D-j> gj
vmap <D-k> gk
vmap <D-0> g0   " head of line
vmap <D-6> g^   " beginning of line
vmap <D-4> g$   " end of line
" Normal mode
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g0

" Switch between diferent split windows
" Ctrl- prefix is overly used by other plugins.
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-h> <C-w>h
"map <C-l> <C-w>l

" Option key as prefix. NOTE: iTerm 2 sends Option key as +Esc. Meta doesn't
" work properly. 
map <Esc>j <C-w>j
map <Esc>k <C-w>k
map <Esc>h <C-w>h
map <Esc>l <C-w>l


" intuitive backspacing in insert mode
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

