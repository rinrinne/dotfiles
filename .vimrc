set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
filetype off
set rtp+=~/.vim/vundle/
set rtp+=~/.vim/private/
" call vundle#rc()
call vundle#begin()

Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/unite.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/surround.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-markdown'
Plugin 'Blackrush/vim-gocode'
Plugin 'vim-jp/cpp-vim'
Plugin 'kingbin/vim-arduino'
Plugin 'vim-scripts/sudo.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'tfnico/vim-gradle'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'

call vundle#end()

filetype plugin indent on

" NERDTree
nmap <F3> :NERDTreeToggle<CR>

" Tagbar
nmap <F4> :TagbarToggle<CR>

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

runtime! conf.d/*.vim
