
"--------------------------------Plugins---------------------------------------------

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd!
  autocmd VimEnter * PlugInstall
endif

source $HOME/.config/nvim/config/lint/lint.vim


call plug#begin()

"------------------------------------------------------------------------------------
"THEME AND INTERFACE
"------------------------------------------------------------------------------------
    "Gruvbox
    Plug 'gruvbox-community/gruvbox'
    
    "Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Icons File Manager
    Plug 'ryanoasis/vim-devicons'

    "Gitgutter
    Plug 'airblade/vim-gitgutter'
"------------------------------------------------------------------------------------
" FILES
"------------------------------------------------------------------------------------

    "Files Search
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'


    "Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    "Files
    Plug 'kyazdani42/nvim-tree.lua'

"------------------------------------------------------------------------------------
" AUTOCOMPLETE
"------------------------------------------------------------------------------------
      
    "Autocomplete Langs COC.NVIM
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

"------------------------------------------------------------------------------------
" FEATURES - 
"------------------------------------------------------------------------------------
    "Syntax check
    Plug 'dense-analysis/ale'

    "Closetag HTML
    Plug 'alvan/vim-closetag'
    
    "Color Pairs
    Plug 'luochen1990/rainbow'
    
    "Comment
    Plug 'preservim/nerdcommenter'
    
    "Markdown and HTML
    Plug 'shime/vim-livedown'  
    
    "Ident"
    "Plug 'Yggdroot/indentLine' 

"------------------------------------------------------------------------------------
" LANGUAGES PLUGS
"------------------------------------------------------------------------------------

    "Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"------------------------------------------------------------------------------------
" 
"------------------------------------------------------------------------------------

call plug#end()


source $HOME/.config/nvim/config/themes/theme.vim
source $HOME/.config/nvim/config/default/default.vim
source $HOME/.config/nvim/config/keybinds/keybinds.vim
source $HOME/.config/nvim/config/languages/golang.vim
source $HOME/.config/nvim/config/languages/html.vim
source $HOME/.config/nvim/config/autocomplete/autocomplete.vim
