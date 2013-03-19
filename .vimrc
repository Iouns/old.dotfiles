" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

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

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Load pathogen plugin
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number		" set line numbering

" Tabs spaces conversion
set tabstop=2
set shiftwidth=2
set expandtab


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Solarized theme options
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" COLOR overlay switching
let CSApprox_verbose_level = 0
if version >= 703 && !has('gui_running')
  " In the color terminal, try to use CSApprox.vim plugin or
  " guicolorscheme.vim plugin if possible in order to have consistent
  " colors on different terminals.
  "
  " Uncomment one of the following line to force 256 or 88 colors if
  " your terminal supports it. Or comment both of them if your terminal
  " supports neither 256 nor 88 colors. Unfortunately, querying the
  " number of supported colors does not work on all terminals.
  set t_Co=256
  "set t_Co=88
  if &t_Co == 256 || &t_Co == 88
    " Check whether to use CSApprox.vim plugin or guicolorscheme.vim plugin.
    if has('gui') &&
      \ (filereadable(expand("$HOME/.vim/plugin/CSApprox.vim")) ||
      \  filereadable(expand("$HOME/vimfiles/plugin/CSApprox.vim")))
      let s:use_CSApprox = 1
    elseif filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim")) ||
      \    filereadable(expand("$HOME/vimfiles/plugin/guicolorscheme.vim"))
      let s:use_guicolorscheme = 1
    endif
  endif
endif
if exists('s:use_CSApprox')
  " Can use the CSApprox.vim plugin.
  "let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
  colorscheme solarized
elseif exists('s:use_guicolorscheme')
  " Can use the guicolorscheme plugin. It needs to be loaded before
  " running GuiColorScheme (hence the :runtime! command).
  runtime! plugin/guicolorscheme.vim
  GuiColorScheme solarized 
else
  colorscheme solarized
endif
