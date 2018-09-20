execute pathogen#infect()
syntax on
filetype plugin indent on

" ******************************************************************************
" vim-plug
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'altercation/vim-colors-solarized'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'rbgrouleff/bclose.vim'

call plug#end()

runtime ftplugin/man.vim

set shiftwidth=4 expandtab smarttab
set hlsearch
set hidden number

colorscheme solarized
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
call togglebg#map("")

let wiki_1 = {'syntax': 'markdown'}
let wiki_2 = {'syntax': 'markdown', 'path': '~/git/vim-todotxt/wiki/', 'ext': '.md'}
let g:vimwiki_list = [wiki_1, wiki_2]
