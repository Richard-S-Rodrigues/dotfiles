set encoding=UTF-8
filetype plugin indent on
set smarttab
set tabstop=2 
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set title
set nowrap
set backspace=start,eol,indent
set hidden
set exrc
set guicursor=
set number
set noerrorbells
set incsearch
set scrolloff=8
set signcolumn=yes
set ai "Auto indent
set si "Smart indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
" Allow to copy and paste globally
vnoremap <F5> "+y<CR>

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'pantharshit00/vim-prisma'

call plug#end()

" COLORS
colorscheme onedark
highlight Normal guibg=NONE ctermbg=NONE

"AUTOCMD
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit NERDTree if its the only window remaining
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" To coc-css works in scss files
autocmd FileType scss setl iskeyword+=@-@

" coc-prettier setup to run 'Prettier' command
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" Compile and run C/C++
nnoremap <silent> <F6> :<c-u>make %< && ./%<<cr>

