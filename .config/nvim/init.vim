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

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mattn/emmet-vim'

call plug#end()

"AUTOCMD
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit NERDTree if its the only window remaining
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



"COLORS
colorscheme onedark
highlight Normal guibg=NONE ctermbg=NONE

