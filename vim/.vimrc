syntax on
syntax enable
set background=dark
colorscheme gruvbox


" set tags
set tags=./tags

" common set

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:‣\ ,trail:·
filetype plugin on
"filetype plugin indent on

"set paste

" taglist
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1

" tagbar golang
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" auto complete
let g:neocomplete#enable_at_startup = 1
"set omnifunc=syntaxcomplete#Complete

"
" command W: it is used to save file with "sudo" permission
"
command W :execute ':w !sudo tee % > /dev/null' | :edit!

nmap ,f :NERDTreeFind<CR>
nmap ,n :NERDTreeToggle<CR>
nmap <unique><C-J> :resize +5 <CR>
nmap <unique><C-K> :resize -5 <CR>

nmap  <unique><C-L> :vertical resize +5 <CR>
nmap  <unique><C-H> :vertical resize -5 <CR>

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#ale#enabled = 1
"let g:airline_left_sep='>'
let g:airline_exclude_filenames = [] " see source for current list
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=0
let g:airline_theme='base16'
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#capslock#symbol = '🔒CAPS' 
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#gutentags#enabled = 1
let g:airline#extensions#gen_tags#enabled = 1
"vim-gitgutter
set updatetime=100
