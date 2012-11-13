" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
runtime bundle/vim-pathogen/autoload/pathogen.vim
let g:pathogen_disabled = []

" Uncomment a line to disable a plugin
" call add(g:pathogen_disabled, 'vim-flake8')
" call add(g:pathogen_disabled, 'vim-virtualenv')
" call add(g:pathogen_disabled, 'nerdcommenter')
" call add(g:pathogen_disabled, 'taglist')

call pathogen#infect()
call pathogen#helptags()

" Basic commands
set hidden          " hide buffers instead of closing them
set nowrap          " don't wrap lines
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set number          " always show line numbers
set shiftwidth=4    " number of spaces to use on autoindenting
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch       " set show matching parenthesis
set smartcase       " ignore case if search pattern is all lowercase,
                    " case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to
                    " shiftwidth, not tabstop
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set history=500     " remember commands and search history
set undolevels=500  " use many levels of undo
set wildignore=*.swp,*.bak,*.pyc
set title           " change the terminal's title
set visualbell      " don't beep
set noerrorbells    " don't beep
set nobackup
set noswapfile
set clipboard=unnamedplus
set cursorline

nmap <silent> \/ :nohlsearch<CR>

filetype plugin indent on

" Colorscheme and syntax highlighting
if &t_Co >= 256 || has("gui_running")
    colorscheme torte
endif

if &t_Co > 2 || has("gui_running")
    syntax on
endif

set list
set listchars=tab:→·,trail:·,extends:»,precedes:«

set colorcolumn=80

" Python's settings
autocmd filetype python set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

