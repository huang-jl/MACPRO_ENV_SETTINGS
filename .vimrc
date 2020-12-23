"#########################COPY FROM GITHUB###################"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
"#########################COPY FROM GITHUB###################"


set nu
highlight LineNr cterm=bold ctermfg=grey
highlight LineNr cterm=bold ctermbg=black
set showmode
set tabstop=4
set expandtab
set shiftwidth=4
colorscheme default
syntax enable
set autoindent
set ru
set mouse=a
set cursorline

"######################CONFIG FOR YCM######################
let g:ycm_global_ycm_extra_conf='~/.vim/gloabl_ycm_conf.py'
let g:ycm_python_interpreter_path='/usr/local/Caskroom/miniconda/base/bin/python3'
"
"######################CONFIG FOR AIRLINE######################
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let time = strftime("%H:%M")
call airline#parts#define_text('time', time)

function! AirlineInit()
    let g:airline_section_b = airline#section#create_left(['time', 'branch'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
"let g:airline_section_b=airline#section#create(['%{strftime("%H:%M")}',' ','%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'])

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ''
