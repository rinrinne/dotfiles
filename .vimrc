set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/surround.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leafgarland/typescript-vim'
Bundle 'tpope/vim-markdown'
Bundle 'jnwhiteh/vim-golang'
Bundle 'vim-jp/cpp-vim'
Bundle 'kingbin/vim-arduino'
Bundle 'vim-scripts/sudo.vim'
Bundle "ekalinin/Dockerfile.vim"
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

filetype plugin indent on
