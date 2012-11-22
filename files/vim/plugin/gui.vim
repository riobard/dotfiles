" General GUI settings. I don't like keeping an additional .gvimrc file.
if has("gui_running")
    set guioptions-=T       " no toolbar
    set go-=r               " no right scrollbar
    set go-=l               " no left scrollbar
    set go-=b               " no bottom scrollbar
    set go-=L               " no scrollbar even if split
    set go-=R               " no scrollbar even if split


    " Make MacVim looks cool
    if has("gui_macvim")
        "set guifont=Monaco:h12
        set guifont=Source\ Code\ Pro:h12

        " Enable meta- kind binding for GUI
        set macmeta
        map <M-j> <C-w>j
        map <M-k> <C-w>k
        map <M-h> <C-w>h
        map <M-l> <C-w>l

        " transparent background
        "set bg=dark
        if &background == "dark"
            "hi normal guibg=black
            "set transparency=5
        endif
    endif
endif
