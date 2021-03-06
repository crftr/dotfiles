"-- PLUGINS ----------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
Plug 'godlygeek/tabular'
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'

" Search and exploring
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'    " Fuzzy search on filenames
Plug 'rking/ag.vim'          " Search within files
Plug 'haya14busa/incsearch.vim'

" Project configuration
Plug 'editorconfig/editorconfig-vim'

" Appearance
Plug 'roman/golden-ratio'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

call plug#end()

"-- BEHAVIOR ---------------------------------------------------------
let mapleader = "\<Space>"

set nocompatible             " We're running Vim
set hidden
set clipboard=unnamed        " Use the OSX clipboard
set autoread                 " Reload files changed outside vim

filetype on                  " Enable filetype detection
filetype plugin on           " Enable filetype-specific plugins
filetype indent on           " Enable filetype-specific indenting

autocmd Filetype ruby       setlocal ts=2 sw=2 expandtab
autocmd Filetype sh         setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype vim        setlocal ts=2 sw=2 expandtab

" Backups are cool, just don't write them all over the place
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

"-- APPEARANCE -------------------------------------------------------
syntax on                    " Enable syntax highlighting
colorscheme sourcerer

let airline_theme           = 'molokai'
let airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let airline_symbols = {}
endif

set encoding=utf8
set relativenumber
set number
set textwidth=80
set colorcolumn=+1
set showcmd

"-- LOAD OTHERS -----------------------------------------------------
for fpath in split(globpath('~/.vim/', '*.vim'), '\n')
  exe 'source' fpath
endfor
