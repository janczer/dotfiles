set ruler
set cursorline
set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
	let c = get(g:, 'vim_addon_manager', {})
	let g:vim_addon_manager = c
	let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

	let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
	if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
		    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
		            \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
	endif

	call vam#ActivateAddons([], {})
endfun
call SetupVAM()

call vam#ActivateAddons(['ctrlp'], {})
call vam#ActivateAddons(['vim-go'], {})
call vam#ActivateAddons(['neocomplete'], {})
call vam#ActivateAddons(['The_NERD_tree'], {})
call vam#ActivateAddons(['vim-airline'], {})
call vam#ActivateAddons(['vim-gitgutter'], {})
call vam#ActivateAddons(['surround'], {})
call vam#ActivateAddons(['fugitive'], {})
call vam#ActivateAddons(['The_NERD_Commenter'], {})
call vam#ActivateAddons(['splitjoin'], {})
call vam#ActivateAddons(['molokai'], {})

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
set number
let g:go_disable_autoinstall = 0

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

inoremap <Up>		<NOP>
inoremap <Down>		<NOP>
inoremap <Left>		<NOP>
inoremap <Right>	<NOP>
noremap	 <Up>		<NOP>
noremap	 <Down>		<NOP>
noremap	 <Left>		<NOP>
noremap	 <Right>	<NOP>
