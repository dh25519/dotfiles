execute pathogen#infect()
syntax on
filetype plugin indent on

" ****************************************************************************
" vim-plug
"
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

if filereadable('/usr/local/opt/fzf')
    Plug '/usr/local/opt/fzf'
else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif

Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

call plug#end()

runtime ftplugin/man.vim

set shiftwidth=4 expandtab smarttab
set hlsearch
set hidden number

set background=dark
colorscheme solarized
call togglebg#map("")
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
set laststatus=2

let wiki_1 = {'syntax': 'markdown'}
let wiki_2 = {'syntax': 'markdown', 'path': '~/git/vim-todotxt/wiki/', 'ext': '.md'}
let g:vimwiki_list = [wiki_1, wiki_2]
