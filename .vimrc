set number
set relativenumber


call plug#begin('~/.vim/plugged')
filetype plugin indent on

" tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" codefolding
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

"commenter
Plug 'scrooloose/nerdcommenter'
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
map <F4> <leader>ci <CR>


" autopair
Plug 'jiangmiao/auto-pairs'

" brackets
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1

" column limit
if exists('+colorcolumn')
  highlight ColorColumn ctermbg=darkgray guibg=#ff0000
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" header
Plug 'alpertuna/vim-header'
let g:header_auto_add_header = 0
let g:header_field_author = 'Francesco Paissan'
let g:header_field_author_email = 'francescopaissan@gmail.com'
map <F3> :AddHeader<CR>

call plug#end()

" visual mode text search
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

set autoindent expandtab tabstop=2 shiftwidth=2

colorscheme desert
