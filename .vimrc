set title
set nocompatible
set number
set showmatch
set autoindent
set tabstop=2
filetype on
syntax on

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/closetag.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'mattn/emmet-vim'

filetype plugin on
filetype indent on
