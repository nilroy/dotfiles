call pathogen#runtime_append_all_bundles()  " adding pathogen to vimrc
call pathogen#helptags()

set number
set nocompatible                    " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                         " display incomplete commands
filetype plugin indent on           " load file type plugins + indentation

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set expandtab                       " use spaces, not tabs (optional)
set backspace=indent,eol,start      " backspace through everything in insert mode

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

"" Mappings
nmap <F8> :TagbarToggle<CR>         " mapping f8 to TagbarToggle
nmap <F2> :NERDTreeToggle<CR>       " mapping f2 to NERDTreeToggle
noremap <F5> :GundoToggle<CR>       " mapping f5 to Gundo
noremap <F9> :Gcommit<CR>           " mapping f9 to Gcommit
inoremap jj <Esc>                   "<Esc> to jj

"" Mapping 
let mapleader = ","                 " setting leader to , 

"" Color Scheme
colorscheme Tomorrow-Night          " Tomorrow Theme

set laststatus=2                    " Always show the statusli

" Enable fancy mode 
let g:Powerline_symbols = 'fancy'   " Powerline

" Shortcut for running ruby
:command R :w ! `rbenv which ruby`

" Code completion
let g:SuperTabDefaultCompletionType = "context"
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

let g:tagbar_usearrows = 1
