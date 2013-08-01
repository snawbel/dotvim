" To be able to use Swedish chars
set encoding=utf-8

" Wrap too long lines
set wrap

" Spaces instead of tabs
set expandtab

" Tabs are 4 characters
set tabstop=4

" vim see 4 spaces as a tabstops and helps deleting them fast. 
set softtabstop=4

" guess indentation based on previous lines
set autoindent

" autoindent uses 2 characters
set shiftwidth=4

" smartindent tried to indent based on filetype 
set smartindent

"#When on, a <Tab> in front of a line inserts blanks according to
"'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.  A
"<BS> will delete a 'shiftwidth' worth of space at the start of the
"line.
set smarttab

" Allows backspace over anything in insert mode
set backspace=indent,eol,start

" allows the cursor to move freely
set virtualedit=all

" Expand the command line using tab
set wildchar=<Tab>

" Highlight searches 
set hlsearch

"While typing a search command, show where the pattern, as it was typed so far,
"matches.  
set incsearch

" If a search only contains small chars it Vim ignores cases and if the search
" contains large chars Vim will search for the case-sensitive string
set smartcase

" show line numbers
set number

" Fold using markers {{{
" like this
" }}}
 set foldmethod=marker

" enable all features
set nocompatible

" powerful backspaces
set backspace=indent,eol,start

" don't wrap words
set textwidth=0

" Set history to 1000 lines
set history=1000

" 1000 undo levels
set undolevels=1000

" Show the line and column number of the cursor position
set ruler

" show partial commands
set showcmd

" show matching braces
set showmatch

" write before hiding a buffer
set autowrite

" allows hidden buffers to stay unsaved, but we do not want this, so comment
" it out:
"set hidden
"set wmh=0

" auto-detect the filetype
filetype plugin indent on

" syntax highlight
syntax on

" we use a dark background, don't we?
" set bg=dark

" Always show the menu, insert longest match
 set completeopt=menuone,longest

" Color scheme
" colorscheme 256-jungle

" Indicates a fast terminal connection.
set ttyfast

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
