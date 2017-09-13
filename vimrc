set ruler
set cursorline
set nocompatible
filetype off
syn on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'

Plugin 'Shougo/neocomplete'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomasr/molokai'
Plugin 'powerline/powerline'

call vundle#end()
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
set number

let g:go_disable_autoinstall = 0

let g:vim_markdown_folding_disabled = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_extra_types = 1
let g:go_highlight_structs = 1  
let g:go_highlight_build_constraints = 1  

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

let g:neocomplete#source#syntax#min_keyword_length = 3

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_match_buffer = 0
let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

inoremap <expr><C-g>	neocomplete#undo_completion()
inoremap <expr><C-l>	neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return neocomplete#close_popup() . "\<CR>"
endfunction

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
noremap gd <C-]>


let mapleader = ","

noremap H gT
noremap L gt
noremap <leader>t :tabnew<CR>
noremap <leader>w :tabclose<CR>

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

set ttyfast
set wildmenu
set ls=2
set encoding=utf8
set cursorline

set tags+=~/.vim/tags/qt

map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

inoremap <Up>		<NOP>
inoremap <Down>		<NOP>
inoremap <Left>		<NOP>
inoremap <Right>	<NOP>
noremap	 <Up>		<NOP>
noremap	 <Down>		<NOP>
noremap	 <Left>		<NOP>
noremap	 <Right>	<NOP>
