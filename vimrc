" -------------------------------------------------------------
" VUNDLE CONFIG
set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/bundle')
" let Vundle manage Vundle, required
" Plug 'gmarik/Vundle.vim'
" Better Code Folding
Plug 'tmhedberg/SimpylFold'
" Better Python Indentation
Plug 'vim-scripts/indentpython.vim'
" Autocomplete
" Bundle 'Valloric/YouCompleteMe'
Plug 'davidhalter/jedi-vim'
" Syntax Check, don't load until first toggle
" Plug 'w0rp/ale', { 'on':  'ALEToggle' }
" PEP 8
" Plug 'nvie/vim-flake8'
Plug 'vim-syntastic/syntastic'
" nerdtree
Plug 'scrooloose/nerdtree'
" Ctrl-P Searching
Plug 'kien/ctrlp.vim'
" Colorscheme
Plug 'altercation/vim-colors-solarized'
" Note-taking
Plug 'vimwiki/vimwiki'
" latex editing
Plug 'lervag/vimtex'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'
call plug#end() 

filetype plugin indent on    " required



" -------------------------------------------------------------
"  Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_mode_map = {"mode": "passive"}

map <leader>l :SyntasticCheck<CR>
map <leader>k :SyntasticReset<CR>

" -------------------------------------------------------------
"  Latex Preview Settings
let g:livepreview_previewer = 'open -a Skim'

" -------------------------------------------------------------
"  FOLDING
" Enable folding
set foldmethod=indent
set foldlevel=99

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='angr'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

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

" buffer switch
nnoremap <leader>[ :bp<CR>
nnoremap <leader>] :bn<CR>

" Enable folding with the spacebar
nnoremap <space> za

" shotrcut for toggle ALE

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" no-esc
imap jk <esc>

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
set cc=80

" python - flag whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" youcompleteme helper with closing window
" let g:ycm_autoclose_preview_window_after_completion=1

" vimwiki html template
let g:vimwiki_list = [{
  \ 'path': '$HOME/vimwiki',
  \ 'template_path': '$HOME/vimwiki/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html'}]

" ale use py3 linter pls
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'

" allow jsx in .js files
let g:jsx_ext_required = 0

" some vimwiki subdirectory stuff
let g:vimwiki_dir_link = 'main'

" advanced python syntax highlight
let python_highlight_all = 1
syntax on 

" nerdtree ignore pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" auto-start nerdtree
autocmd vimenter * NERDTree

" cursor
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

set relativenumber
set nu

"python with virtualenv support
" py3 << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   exec(open(activate_this).read(), dict(__file__=activate_this))
" EOF
