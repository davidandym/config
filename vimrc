execute pathogen#infect()

set shiftwidth=4
set tabstop=4
set smarttab

filetype plugin indent on

syntax on 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" colorscheme
let g:solarized_termcolors=256
set background=dark
colorscheme zenburn

" allow jsx in .js files
let g:jsx_ext_required = 0

" advanced python syntax highlight
let python_highlight_all = 1

" auto-start nerdtree
autocmd vimenter * NERDTree

set mouse=a
