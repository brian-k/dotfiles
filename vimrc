set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8

call pathogen#infect()          " run pathogen
call pathogen#helptags()

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

" let Vundle manage Vundle
" required! 
" Bundle 'gmarik/vundle'

set showcmd                     " display incomplete commands
filetype on											" enables filetype detection
filetype plugin on							" enables filetype specific plugins
filetype plugin indent on       " load file type plugins + indentation

"" Colors
syntax enable
if has('gui_running')
	set background=light
else
	set background=dark
endif
colorscheme solarized

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set wildmode=longest,list,full  " configures tab completion
set wildmenu										" enables tab completion
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Auto commands
autocmd FileType python set omnifunc=pythoncomplete#Complete

"" Enable line numbers
set number
"" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>


autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

