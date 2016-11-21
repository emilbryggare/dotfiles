set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'AutoComplPop'
Plugin 'cmather/vim-meteor-snippets'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'mxw/vim-jsx'
Plugin 'editorconfig/editorconfig-vim'
" Actually does much more than syntax highlighting but that's overkill for me
" NeoBundle "kchmck/vim-coffee-script"
" NeoBundle "hdima/python-syntax"

filetype plugin indent on     " required!
call vundle#end()
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" SETIINGS
" --------
"
" COLORS:
set t_Co=256
syntax enable
set background=dark
if $ITERM_PROFILE == 'dark'
	set background=dark
endif
if $ITERM_PROFILE == 'light'
	set background=light
endif
colorscheme solarized
set cursorline

" OTHER:
set virtualedit=onemore " Allow for cursor beyond last character
set history=1000 " Store a ton of history (default is 20)
set spell " Spell checking on
set mouse=a " Automatically enable mouse usage
set mousehide " Hide the mouse cursor while typing
scriptencoding utf-8
" Remap JJ to <Esc>
imap jj <Esc>
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" The default leader is '\', but many people prefer ',' as it's in a standard
" location. 
let mapleader = ','
" line numbers
set nu
" formatting
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
" The following line sets the smartindent mode for *.py files. It means that
" after typing lines which start with any of the keywords in the list (ie.
" def, class, if, etc) the next line will automatically indent itself to the
" next level of indentation
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" search
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set scrolloff=3                 " Minimum lines to keep above and below cursor

" allow plugins by file type
filetype plugin on
filetype indent on

" LINTING
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
