syntax on
set autoindent
set cindent
set nu
set nocompatible
set wildmenu
set wildmode=longest,full
set autoread
set showmode
set showcmd
set wrapscan
set ignorecase
set incsearch
set hlsearch
" Escape, escape clears highlighted search
nmap <silent> <Esc><Esc> :nohlsearch<CR>
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set rulerformat=%30(%=\:b%n%y%m%r%w\ (%c%V,%l)\ %P%)
set ruler
set history=1000
set scrolloff=5
set sidescrolloff=10

set wmh=0
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h
map <C-L> <C-W>l

" select text just like any X terminal
set mouse=v ttymouse=xterm2
"if has('autocmd')
"    " TODO set this *after* all plugins have loaded
"    autocmd VimEnter * set mouse=v ttymouse=xterm2
"endif
set mousehide
behave xterm

set backspace=indent,eol,start

" show tabs and eol (less intrusive than match)
set listchars=tab:>-,eol:$


if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal g'\"" | endif
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
au BufNewFile,BufRead *.thpl setfiletype perl

"colorscheme chlordane
autocmd FileType sh colorscheme elflord
colorscheme elflord

"80 columns width
"syntax match ErrorMsg /\%>80v.\+/

highlight NonText    ctermfg=gray guifg=gray
highlight SpecialKey ctermfg=gray guifg=gray
highlight TrailingWhitespace ctermbg=red  guibg=red
match     TrailingWhitespace /\s\+$/

" highlight for green background
highlight Comment ctermfg=yellow
" highlight Define ctermfg=

filetype plugin on
set ofu=syntaxcomplete#Complete
map <F9> :set ignorecase! ignorecase?

set diffopt+=iwhite
set diffopt+=context:100000
set diffexpr="" 

