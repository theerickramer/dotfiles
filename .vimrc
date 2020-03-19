set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'
Plugin 'mattn/emmet-vim'
Plugin 'highwaynoise/chuck.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'mattn/webapi-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colorscheme elflord
syntax enable
highlight Comment cterm=italic
set cursorline
set hlsearch " highlight search matches
set incsearch " show search matches as you type
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
" line numbers
set number
" emmet
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.dotfiles/.emmet-vim.config.json')), "\n"))
" Prettier
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 1
let g:prettier#autoformat = 1
" auto Prettier on Insert
" autocmd BufWritePre,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier
" NERDTree CTRL + n
map <C-n> :NERDTreeToggle<CR>
" nerdcommenter
let g:NERDSpaceDelims = 1
" indent html - gg=G indents all, or select text and =
filetype indent on
set filetype=html
set smartindent
