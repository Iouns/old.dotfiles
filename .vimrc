" .vimrc file

" Useless here but "Better safe than sorry"
set nocompatible

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:

" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'Lokaltog/vim-powerline'

"vim snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "honza/dockerfile.vim"

Bundle 'rodjek/vim-puppet'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/syntastic.git'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'fholgado/minibufexpl.vim'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
let g:Powerline_symbols = 'fancy'

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		      " Show (partial) command in status line.
set showmatch		      " Show matching brackets.
"set autowrite	      " Automatically save before commands like :next and :make
"set mouse=a		      " Enable mouse usage (all modes)
set number		        " Set line numbering.
set ruler             " Show line number in status line.
set encoding=utf8
set undolevels=100    " 100 undos
set history=100
set noerrorbells      " No error bells please

" Searching options.
set hlsearch
set incsearch
set ignorecase
set smartcase

" Persistent undo settings
set undodir=~/.vim/undodir
set undofile
set undolevels=1000   " maximum number of changes that can be undone
set undoreload=1000   " maximum number lines to save for undo on a buffer reload

" Tabs spaces options.
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Always show status line
set laststatus=2

" Terminal 256 colors
set t_Co=256

colorscheme solarized
" Solarized theme options
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Catch whitespaces..
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype off                   " required!
if has("autocmd")
  filetype plugin indent on
endif


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

