
" Tabularize plugin: align equal signs and friends
"if exists(":Tabularize") " TODO: for some reason this test fails at startup
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>

    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>

    nmap <Leader>a/ :Tabularize /\/\/<CR>
    vmap <Leader>a/ :Tabularize /\/\/<CR>

    nmap <Leader>a# :Tabularize /#<CR>
    vmap <Leader>a# :Tabularize /#<CR>

    "Alternative style: spaces after colons
    "nmap <Leader>a: :Tabularize /:\zs<CR>
    "vmap <Leader>a: :Tabularize /:\zs<CR>
"endif

