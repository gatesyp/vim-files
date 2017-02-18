set nocompatible              		" be iMproved, required

so ~/.vim/plugins.vim

"----------------------------------------Auto-Commands----------------------------------------
syntax on
colorscheme atom-dark-256
"colorscheme desert  			"for compatability
"Automaticlaly source the vimrc on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
filetype plugin indent on
let mapleader = ','                      "default leader is \, but , is much better
set number                               "activates line numbers
set noerrorbells visualbell t_vb=        "no error bells


"----------------------------------------Visuals----------------------------------------



set linespace=15                         "set linespacings for gui vim
set t_Co=256
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R



"----------------------------------------Search----------------------------------------



set hlsearch
set incsearch



"----------------------------------------Split Management----------------------------------------



set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>



"----------------------------------------Mappings----------------------------------------



" make it easy to edit Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>
" make it easy to edit plugins
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
" make it easy to edit my github/vim/README file when adding in new first time setup commands
nmap <Leader>em :tabedit ~/GitHub/vim/README.md<cr>
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


"----------------------------------------Plugins----------------------------------------

" on write, run flak8
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
let g:PyFlakeDefaultComplexity=10
" this is the default line length
let g:PyFlakeMaxLineLength = 79


"----------------------------------------Syntastic----------------------------------------
" set statusline+=%#warningmsg#				" turn off warnings
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cpp_compiler_options = '-std=c++0x'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_w = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_c_gcc_args = '-fsyntax-only'




" notes and tips
" - Press 'zz' to instantly center line where cursor is located
" - :!ctags -R        generate tags for everything in current directory
" 	- Access by ,f <query>
" 	- If multiple tags there r different ways to see them
" 	  	- 
"
"-----how to search and replace in multiple files
" Gsearch <CR>
" 'query'
" select lines u want changed
" :s /query/replacement
" g
" a
" :wa
" 
" then done
"
" SURRONDING TEXT replace keys with what i want to surround with
" cs ' "       // changes the surrounding from ' to doube quote
" cd ' 		// deletes the surrounding '
" cst <strong> // cahnges the surrounding tag to strong
" S <tag>   	// creates a new surrounding tag
"
