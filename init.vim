set number
set encoding=utf-8
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set fileformat=unix
set smarttab
set softtabstop=4
set mouse=a
syntax enable 
set noswapfile
set scrolloff=5
set backspace=indent,eol,start
set cursorline

let mapleader = ' '

" Plugs
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'preservim/nerdtree' " NerdTree.
Plug 'preservim/nerdcommenter' " NerdCommenter.
Plug 'vim-airline/vim-airline' " Status bar.
Plug 'ap/vim-css-color' " CSS Color Preview.
Plug 'neoclide/coc.nvim'  " Auto Completion.
Plug 'ryanoasis/vim-devicons' " Developer Icons.
Plug 'tc50cal/vim-terminal' " Vim Terminal.
Plug 'preservim/tagbar' " Tagbar for code navigation.
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors.
Plug 'tomasr/molokai' " Molokai theme.
Plug 'jiangmiao/auto-pairs' " Auto-pair parentheses, brackets, e.t.c. ...
Plug 'norcalli/nvim-colorizer.lua' " Color highlighter for Neovim.
Plug 'tpope/vim-surround' " Surrounding ysw)

call plug#end()

" Plug settings
colorscheme molokai " Color scheme for Vim.

"lua require 'colorizer'.setup() " Setup lua colorizer.

nmap <C-s> :w<CR>

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

" TagbarToggle keymap
nmap <F3> :TagbarToggle<CR>

" COC autocomplete keymap
" " use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
