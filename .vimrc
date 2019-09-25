set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-sensible'
" csw} := Create Surrounding on Word with }
Plugin 'tpope/vim-surround'
" Automagically repeat last command with .
Plugin 'tpope/vim-repeat'
" gcc on selection toggles commenting
Plugin 'tpope/vim-commentary'
" Syntax checking 
Plugin 'scrooloose/syntastic'
" Python syntax-highlights
Plugin 'hdima/python-syntax'
" Git related syntax/filetype configuration
Plugin 'tpope/vim-git'
" Session management, prosession depends on obsession
Plugin 'tpope/vim-obsession'
" Automagically detect tabstops
Plugin 'tpope/vim-sleuth'
" Use ]b :bnext [<Space> insert \n before current line
Plugin 'tpope/vim-unimpaired'
" readline keybindings in insert and command mode C-a for home, C-e for end, C-w delete word
Plugin 'tpope/vim-rsi'
" .md is markdown not Modula-2
Plugin 'tpope/vim-markdown'
" Indent python
Plugin 'vim-scripts/indentpython.vim'
" C-a increment date/number; C-x decreases
Plugin 'tpope/vim-speeddating'
" see unicode character representation try ga here: 🍺
Plugin 'tpope/vim-characterize'
" add support for plist editing in vim
Plugin 'darfink/vim-plist'
" Navigate across tmux windows using Ctrl+h,j,k,l
Plugin 'christoomey/vim-tmux-navigator'
" Airline statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" No BS Python code folding for vim
Plugin 'tmhedberg/simpylfold'
" play nicely with tmux focus events
Plugin 'tmux-plugins/vim-tmux-focus-events'
" Automagically add the other pair of bracket/quote/…
Plugin 'Raimondi/delimitMate'
" Show changes to files with respect to git index
Plugin 'airblade/vim-gitgutter'
" Save your mistakes to be saved from your mistakes!
Plugin 'mbbill/undotree'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Use the Solarized Dark theme
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" Searching
set hlsearch
set ignorecase
set smartcase

" Judiciously space out your words
" See: https://stackoverflow.com/a/1878983
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Dont clutter my workspace with temporary files
set backupdir=~/.scratch/vim/backup,.vim/backup,.,~/
set undodir=~/.scratch/vim/undo,.vim/undo,.
set undofile
set fileencoding=utf-8
set directory=~/.scratch/vim/swap,.vim/swap,.,~/tmp,/var/tmp,/tmp

set clipboard=unnamedplus
set mouse=a
let mapleader = "\<Space>"

set updatetime=100
set signcolumn=yes
set relativenumber
" ctrlp settings
let g:ctrlp_map = '<C-b>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/.git/*,*/tmp/*,*.swp,*.pyc
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc|swp|zip)$',
  \}
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

nnoremap <leader>cd :lcd %:p:h<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>ve :edit $MYVIMRC<CR>
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap Q :qa<CR>

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>flb :BLines<CR>
nnoremap <leader>fw :Windows<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fc :Commands<CR>
nnoremap <leader>fm :Maps<CR>

" fugitive
nnoremap <leader>ga :Git add--interactive

