"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Activate Pathogen to manage plugins
call pathogen#infect()

" Sets how many lines of history VIM has to remember
set history=666  

" No need to be vi compatible in 2017
set nocompatible

" Enable filetypes plugin
filetype plugin on
filetype plugin indent on

" Manage buffers efficiently
set hidden

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Enable code folds
set foldenable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Highlight search results
set hlsearch

" Incremental search, like in modern browsers
set incsearch

" Show line numbers
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowb
set noswapfile

" Treat elm as haskell for now
autocmd BufRead,BufNewfile *.elm setlocal filetype=haskell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs and Lines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent 
set si "Smart indent 

"set linebreak           " Don't break lines in the middle of words  
"set textwidth=80          
"set formatoptions+=t    " Break text at textwidth setting
"set formatoptions+=a   " auto format on every change


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8  

" Enable syntax highlighting
syntax enable 

" Enable 256 color schemes
set t_Co=256

" Colorscheme settings
set background=dark
colorscheme solarized


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert newlines without entering insert mode
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Arrow keys are unacceptable
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Search is case-sensitive only when uppercase letter is used
set ignorecase 
set smartcase

" Move around splits with Ctrl+[hjkl]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nerd Tree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
let NERDTreeShowHidden=1

" vim-jsx
let g:jsx_ext_required = 0  " enable jsx in files without .jsx extension

" CtrlP
let g:ctrlp_map = '<leader>j'

" delimitMate
"let delimitMate_expand_cr = 1

" AutoSave - enable on startup
let g:auto_save = 1  

" Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Polyglot
let g:vim_markdown_frontmatter = 1   " highlight YAML frontmatter

nmap <F9> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" Pencil

" Autoenable for these filetypes
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" `Comment` disables autoformat in YAML front matter
" See https://github.com/reedes/vim-pencil/issues/54
let g:pencil#autoformat_config = {
    \   'markdown': {
    \     'black': [
    \       'Comment',  
    \       'htmlH[0-9]',
    \       'markdown(Code|H[0-9]|Url|IdDeclaration|Link|Rule|Highlight[A-Za-z0-9]+)',
    \       'markdown(FencedCodeBlock|InlineCode)',
    \       'mkd(Code|Rule|Delimiter|Link|ListItem|IndentCode|Snippet)',
    \       'mmdTable[A-Za-z0-9]*',
    \     ],
    \     'white': [
    \      'markdown(Code|Link)',
    \     ],
    \   }
    \ }


