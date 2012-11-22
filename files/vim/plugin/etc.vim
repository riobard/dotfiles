" Use these symbols for invisible chars
set listchars=tab:⇥\ ,trail:␣,eol:↩,nbsp:␣,extends:…,precedes:…

" Use OS X clipboard
set clipboard=unnamed

set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.class " ignore some file extensions when completing names by pressing Tab

" Set the terminal title.  A running gvim will always have a window title, but
" when vim is run within an xterm, by default it inherits the terminal’s
" current title.  This gives e.g. | page.html (~) - VIM |. 
set title

" Silent mode. No beeping. 
set visualbell noerrorbells

" Read 5 lines as modelines
set modeline modelines=5

" Hightlight cursor position
set cursorline  "cursorcolumn


set fenc=utf8 fencs=utf8,gb2312,big5
set fileformat=unix fileformats=unix,dos,mac


set showmatch     " set show matching parenthesis

" Turn on hidden.  Don’t worry about the name. What this does is allow Vim to
" manage multiple buffers effectively.  
" * The current buffer can be put to the background without writing to disk; 
" * When a background buffer becomes current again, marks and undo-history 
" are remembered.
set hidden


" Keep a longer history By default, Vim only remembers the last 20 commands
" and search patterns entered. It’s nice to boost this up:
set history=1000
set undolevels=1000      " use many levels of undo


" Maintain more context around the cursor.  When the cursor is moved outside
" the viewport of the current window, the buffer is scrolled by a single line.
" Setting the option below will start the scrolling three lines before the
" border, keeping more context around where you’re working.
set scrolloff=3
" Typing zz is also handy; it centers the window on the cursor without moving
" the cursor. (But watch out for ZZ!) 



if exists("+relativenumber")
    set relativenumber
endif



" Stifle many interruptive prompts: The “Press ENTER or type command to
" continue” prompt is jarring and usually unnecessary. You can shorten
" command-line text and other info tokens with, e.g.:
set shortmess=atI
" See :help shortmess for the breakdown of what this changes. You can also
" pare things down further if you like. 



" Trigger tag auto hightlight every second. Note this is done by writing swap
" file to trigger the CursorHold event. Low values will incur more disk I/O.
set updatetime=1000 


" show softwarpped continuing line
set showbreak=…
"set showbreak=>\ "
"set showbreak=-


if exists("+autochdir")
    " change working directory to the one containing the file opened
    set autochdir
endif
