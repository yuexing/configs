" leader and localleader for some filetype
let leader = "\\"

" enable filetype plugins
filetype plugin on
filetype indent on

" 
set cursorline

" Set to auto read when a file is changed from the outside
set autoread

" Turn on the WiLd menu
set wildmenu
set wildignore=*.o,*~,*.pyc,.svn\*

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch 
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Show matching brackets when text indicator is over them
set showmatch 

" Enable syntax highlighting
syntax enable 

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=81

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>tnn :tabnext

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" color column
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" line number
set nu

" useful map in insert mode
imap <leader>d <esc>ddi

" edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" use abbreviate 
iabbrev ccopy Copyright 2014 Yue Xing, all rights reserved
iabbrev main( int main(int argc, const char** argv)

" so that h/H, l/L are consistent
nnoremap H ^
nnoremap L $

" quote the word/selection
nnoremap <leader>" hea"<esc>hbi"<esc>
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
nnoremap <leader>' hea'<esc>hbi'<esc>

" comment the selection
" TODO: make it based on filetype
vnoremap <leader>/ <esc>`<i/*<esc>`>a*/<esc>

" folding
set foldmethod=syntax

" operator pending movement
" used in din(, cin(.
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

" grep for the word/WORD/selection
nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

" use autocmd for insert hpp header
function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename . " "
  execute "normal! Go#endif /* " . gatename . " */"
  normal! kk
endfunction

augroup toplevel
  autocmd!
  " close vim if the only window left open is a nerdtree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  autocmd bufenter * normal! zR
  " insert hpp header
  autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
  " support SCons
  autocmd BufReadPre SConstruct set filetype=python
  autocmd BufReadPre SConscript set filetype=python
augroup END

" ctags: looks for tags until /
set tags=./tags,tags;/
