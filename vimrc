set nocompatible    " use vim defaults
set ls=2            " allways show status line
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set number          " show line numbers
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0    " turn off scrolling, didn't work well with PuTTY
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h
set backspace=2     " enable backspace in insert mode

colorscheme elflord

let mapleader=","   " the leader key is comma

"set autoindent     " always set autoindenting on
"set smartindent    " smart indent
"set cindent        " cindent

set showmatch
"set cursorline

"show tabs and trailing whitespaces
set list listchars=nbsp:¬,tab:·\ ,extends:»,precedes:«,trail:·

syntax on
"set wildmenu
"set wildmode=full:list
set wildmode=list:longest,full
map <F1> <ESC>gT
map <F2> <ESC>gt
map <F4> :set ic!<CR>
map <silent><F5> :set number!<CR>

" virtual tabstops using spaces
let my_tab=2
execute "set tabstop=".my_tab
execute "set shiftwidth=".my_tab
execute "set softtabstop=".my_tab
set expandtab
" allow toggling between local and default mode
function! TabToggle()
  if &expandtab
    execute "set shiftwidth=".g:my_tab
    set softtabstop=0
    set noexpandtab
  else
    execute "set shiftwidth=".g:my_tab
    execute "set softtabstop=".g:my_tab
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

"call plug#begin('~/.vim/plugged')
"Plug 'groenewege/vim-less'
"Plug 'fatih/vim-go'
"Plug 'scrooloose/nerdtree'
"Plug 'derekwyatt/vim-scala'
"call plug#end()

" warn 80 col and 120 col
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=233 guibg=#2c2d27

