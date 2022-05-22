 packadd! dracula_pro
" packadd! dracula

syntax enable

" Highlight cursor line underneath the cursor horizontally.
:set cursorline

" Highlight cursor line underneath the cursor vertically.
:set cursorcolumn

" Enable auto completion menu after pressing TAB.
:set wildmenu

let g:airline_theme='dracula_pro'
let g:dracula_colorterm = 0
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:dracula_bold = 0
let g:dracula_italic = 0
let g:dracula_underline = 0
let g:dracula_undercurl = 0
let g:dracula_inverse = 0

colorscheme dracula_pro
" colorscheme dracula

:set tabstop=2
:set shiftwidth=2
:set expandtab
:set number
:set termguicolors

highlight Normal ctermbg=None

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/AutoComplPop'
call plug#end()

autocmd BufEnter * :highlight Normal ctermbg=NONE ctermfg=NONE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
imap jj <Esc>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{
"
" This will enable code folding.
" Use the marker method of folding.
  augroup filetype_vim
    autocmd!
        autocmd FileType vim setlocal foldmethod=marker
         augroup END

" More Vimscripts code goes here.
"
" }}}
