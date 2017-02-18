" -------------------------------------------------------------
" Notes , Tips
" -------------------------------------------------------------

" SURROUNDING TEXT

" changes the surrounding from ' to double quote
" cs ' "

" deletes the surrounding '
" cd '

" changes the surrounding tag to strong
" cst <strong> 

" creates a new surrounding tag
" S <tag>

set nocompatible

so ~/.vim/plugins.vim

" -------------------------------------------------------------
" Auto-Commands
" -------------------------------------------------------------

syntax on
colorscheme atom-dark-256

" Source the vimrc on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
filetype plugin indent on
let mapleader = ','

" activates line numbers
set number

" no error bells
set noerrorbells visualbell t_vb=        

" -------------------------------------------------------------
" Display Settings
" -------------------------------------------------------------

" Show "ruler" at bottom (cursor position et al.).
set ruler

" Show initial characters of pending incomplete command.
set showcmd

" set linespacings for gui vim
set linespace=15                         
set t_Co=256
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" -------------------------------------------------------------
" Search
" -------------------------------------------------------------

set hlsearch
set incsearch

" -------------------------------------------------------------
" Split Management
" -------------------------------------------------------------

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

" -------------------------------------------------------------
" Mappings
" -------------------------------------------------------------

" make it easy to edit Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" make it easy to edit plugins
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

" add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" ctl + num to switch between tabs
map <C-S-]> gt
map <C-S-[> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>

" enter normal mode with jk
:imap jk <Esc>

" -------------------------------------------------------------
" Setup wrapping for long lines
" -------------------------------------------------------------

" Enable wrapping of long lines.
set wrap

" Use the prompt ">   " for wrapped lines.
let &showbreak="    "

" Break lines at reasonable places instead of mid-word.
set linebreak

" The 'breakat' variable determines good places to break.
" Defaults to line below:
" set breakat=\ \^I!@*-+;:,./?

" How far to scroll sideways when wrapping is off (:set nowrap).
" When zero (the default), will scroll to the middle of the screen.
" May use a small non-zero number for fast terminals.
set sidescroll=0

" Enable 'list' mode (:set list) to see non-visibles a la 'reveal codes'
" in the old Word Perfect.  In list mode, 'listchars' indicates
" what to show.  Defaults to 'eol:$', but has lots of features
" (see :help 'listchars).
" The 'trail' setting means trailing whitespace.
" The feature is too disconcerting to leave on, but pre-configure
" listchars so :set list will do the right thing.
" set list
set listchars=trail:·,nbsp:·,extends:>,precedes:<,eol:$

" -------------------------------------------------------------
" Plugins
" -------------------------------------------------------------

" on write, run flak8
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
let g:PyFlakeDefaultComplexity=10

" this is the default line length
let g:PyFlakeMaxLineLength = 79

" -------------------------------------------------------------
" Syntastic
" -------------------------------------------------------------

" turn off warnings
" set statusline+=%#warningmsg#				

set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cpp_compiler_options = '-std=c++0x'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_w = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_gcc_args = '-fsyntax-only'
