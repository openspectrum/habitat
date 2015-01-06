" ------
" CONFIG

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set clipboard=unnamed
set path=$PWD/**
set backspace=2

" --------
" PATHOGEN

" Use pathogen.vim for bundle management
" https://github.com.tpope.vim-pathogen
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

syntax enable

" ------
" THEMES

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

" -------
" AUTOCMD

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" ------------
" KEY BINDINGS

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
map cc :w !pbcopy

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader)p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Move between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ------------
" HTML INDENTATION
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
