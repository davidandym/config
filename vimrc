" -------------------------------------------------------------
" VUNDLE CONFIG
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Better Code Folding
Plugin 'tmhedberg/SimpylFold'
" Better Python Indentation
Plugin 'vim-scripts/indentpython.vim'
" Autocomplete
Bundle 'Valloric/YouCompleteMe'
" Syntax Check
Plugin 'vim-syntastic/syntastic'
" PEP 8
Plugin 'nvie/vim-flake8'
" nerdtree
Plugin 'scrooloose/nerdtree'
" Ctrl-P Searching
Plugin 'kien/ctrlp.vim'
" Colorscheme
Plugin 'altercation/vim-colors-solarized'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" -------------------------------------------------------------
"  FOLDING
" Enable folding
set foldmethod=indent
set foldlevel=99


" -------------------------------------------------------------
" TABS
set shiftwidth=4
set tabstop=4
set smarttab

" python specific
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" -------------------------------------------------------------
" KEYBINDING REMAPS

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

" shotrcut for youcompleteme goto
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" -------------------------------------------------------------
" COLORSCHEME 
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

" -------------------------------------------------------------
" MISC 
" python encoding (for most)
set encoding=utf-8

" python - flag whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" youcompleteme helper with closing window
let g:ycm_autoclose_preview_window_after_completion=1

" allow jsx in .js files
let g:jsx_ext_required = 0

" advanced python syntax highlight
let python_highlight_all = 1
syntax on 

" nerdtree ignore pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" auto-start nerdtree
autocmd vimenter * NERDTree

set relativenumber

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
