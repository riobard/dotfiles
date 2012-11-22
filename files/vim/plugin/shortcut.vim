
" Map leader to ','.  The leader character is your own personal modifier key,
" as g is Vim’s modifier key (when compared to vi). The default leader is \,
" but this is not located standardly on all keyboards and requires a pinky
" stretch in any case.
let mapleader = ","
" <SPACE> is also a good choice. Note: you can of course have several “
" personal modifier keys” simply by mapping a sequence, but the leader key is
" handled more formally. 


" speed up Vim command typing by using ; (no shift key) as : (=shift+;)
nnoremap ; :

" Remap ` to '.  These are very similar keys. Typing 'a will jump to the line
" in the current file marked with ma. However, `a will jump to the line and
" column marked with ma. It is more useful in any case I can imagine, but it
" is located way off in the corner of the keyboard. The best way to handle
" this is just to swap them:
nnoremap ' `
nnoremap ` '


" Switch tabs in Normal mode
" Note: Terminal cannot recongnize <C-Tab>, just <Tab>
map <Tab>   :tabnext<CR>
map <S-Tab> :tabprev<CR>


map <leader>t :NERDTree\|TagbarToggle<CR>
com TT NERDTree | TagbarToggle


"  use w!! to 'sudo' save after you opened the file without 'sudo' first
cmap w!! w !sudo tee % >/dev/null


" Toggle `set list` to show invisible chars
nmap <leader>l :set list!<CR>

" Toggle paste mode
nmap <leader>p :set paste!<CR>


" clear search highlights easily
"nmap <silent> <leader>/ :let @/=""<CR>
nmap <leader>/ :nohl<CR>
