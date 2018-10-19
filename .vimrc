" ****************************************************************************
" plugins
"
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
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
endif

Plug 'altercation/vim-colors-solarized'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

call plug#end()

runtime ftplugin/man.vim


" ****************************************************************************
" various options
"
set shiftwidth=4 tabstop=4 expandtab smarttab
set list
set hlsearch
set hidden number
set visualbell
set wildmode=longest:full
set sessionoptions+=unix,slash
set mouse=a
set showcmd
set timeoutlen=2000
set concealcursor=nc


" ****************************************************************************
" solarized
"
set background=dark
colorscheme solarized
call togglebg#map("")


" ****************************************************************************
" airline
"
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
set laststatus=2 noshowmode


" ****************************************************************************
" vimwiki
"
let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c': 'c', 'c++': 'cpp'}

let wiki_sandbox = {}
let wiki_sandbox.path = '~/vimwiki/sandbox'
let wiki_sandbox.nested_syntaxes = {'python': 'python', 'c': 'c', 'c++': 'cpp'}

let g:vimwiki_list = [wiki, wiki_sandbox]
let g:vimwiki_ext2syntax={'.md': 'markdown'}

augroup filetype_vimwiki
    autocmd FileType vimwiki setlocal textwidth=79
augroup END
