"------------------------------------------------------------------------------------
" MAPS
"------------------------------------------------------------------------------------

    "Leader Key
    let mapleader="\<space>"

    "Neovim reload
    nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

    "Fuzzy search Files
    nnoremap <c-p> <cmd>Telescope find_files<cr>
    
    "Search ocurrencys
    nnoremap <c-f> <cmd>Telescope live_grep<cr>

    "Remove highlighting
    nnoremap <F3> :noh<CR>

    "File Buffer
    nnoremap <tab> :b#<CR>
    
    "Tabs
    nnoremap <C-l> :tabnext<CR>
    nnoremap <C-h> :tabprevious<CR>

    "Tabs Split
    nnoremap <Leader>w <C-w>w

    "Substitute all
    nnoremap <leader>su :%s/original_string/new_string/g
    nnoremap <leader>sp :grep original_string
    nnoremap <leader>sb :cfdo %s/original_string/new_string/g
    
    "NewFile
    nnoremap <leader>nf :tabnew %:h/filename

    "New vsplit
    nnoremap <leader>ns :vsplit

    "Comment Code
    nmap <C-_>   <Plug>NERDCommenterToggle
    xmap <C-_>   <Plug>NERDCommenterToggle<CR>
    imap <C-_>   <esc><Plug>NERDCommenterToggle<CR>i

    "Coc Autocomplete
    inoremap <silent><expr> <c-space> coc#refresh()
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    
    "Move Lines
    nnoremap <S-k> :m-2<CR>
    nnoremap <S-j> :m+<CR>
    inoremap <S-k> <Esc>:m-2<CR>
    inoremap <S-j> <Esc>:m+<CR>
    
    "nnoremap <S-Up> :m-2<CR>
    "nnoremap <S-Down> :m+<CR>
    "inoremap <S-Up> <Esc>:m-2<CR>
    "inoremap <S-Down> <Esc>:m+<CR>
    
    "Markdown Preview and HTML
    nmap <leader>mp :LivedownPreview<CR>
    nmap <leader>ms :LivedownKill<CR>
    
    "JSON prettify
    command FormatJSON %!jq .
    nnoremap <F12> :FormatJSON<CR>

    "JSON one line
    command FormatJSONOneLine %!jq -c .
    nnoremap <F24> :FormatJSONOneLine<CR>

"------------------------------------------------------------------------------------
" FILE
"------------------------------------------------------------------------------------

    "File
    nnoremap <leader>l :NvimTreeToggle<CR>
    nnoremap <leader>r :NvimTreeRefresh<CR>
    nnoremap <leader>n :NvimTreeFindFile<CR>

