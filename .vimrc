set nocompatible
filetype off

" ==============VUNDLE STUFF================
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()			" required

"turns on filetype specific behaviour
filetype plugin indent on

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" let Vundle manage fugitive
Plugin 'tpope/vim-fugitive'

" All plygins before this line
call vundle#end()			" required
filetype plugin indent on	" required


"================LINE NUMBERS================
"Turns on line numbers on the left
set number

"Turns on line numbers relative to the current position
set relativenumber


"================WIDTH================
"Sets the width of a tab to 4 characters
set tabstop=4

"Sets the width of a shift command to 4 characters
set shiftwidth=4

"================COLORS & SYNTAX================
"Turns on generic syntax highlighting
syntax on

"Sets a consistent color
colo ron

"================MISC. BEHAVIOUR================

"Turns on semi-animated suggestion menu when typing in commands
set wildmenu

"Shows normal mode commands as they are typed
set showcmd
