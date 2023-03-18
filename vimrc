set nocompatible              " be iMproved, required
filetype off                  " required

" For those using the fish shell: add set shell=/bin/bash to your .vimrc
set shell=/bin/bash

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
Plugin 'tpope/vim-fugitive'

Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'fatih/vim-go'

" Load colorschemes
Plugin 'chriskempson/base16-vim'

" Plugin 'itchyny/lightline.vim'
" Plugin 'nicknisi/vim-base16-lightline'

let g:lightline = {
            \   'colorscheme': 'base16',
            \   'active': {
            \       'left': [ [ 'mode', 'paste' ],
            \               [ 'gitbranch' ],
            \               [ 'readonly', 'filetype', 'filename' ]],
            \       'right': [ [ 'percent' ], [ 'lineinfo' ],
            \               [ 'fileformat', 'fileencoding' ],
            \               [ 'gitblame', 'currentfunction',  'cocstatus', 'linter_errors', 'linter_warnings' ]]
            \   },
            \   'component_expand': {
            \   },
            \   'component_type': {
            \       'readonly': 'error',
            \       'linter_warnings': 'warning',
            \       'linter_errors': 'error'
            \   },
            \   'component_function': {
            \       'fileencoding': 'helpers#lightline#fileEncoding',
            \       'filename': 'helpers#lightline#fileName',
            \       'fileformat': 'helpers#lightline#fileFormat',
            \       'filetype': 'helpers#lightline#fileType',
            \       'gitbranch': 'helpers#lightline#gitBranch',
            \       'cocstatus': 'coc#status',
            \       'currentfunction': 'helpers#lightline#currentFunction',
            \       'gitblame': 'helpers#lightline#gitBlame'
            \   },
            \   'tabline': {
            \       'left': [ [ 'tabs' ] ],
            \       'right': [ [ 'close' ] ]
            \   },
            \   'tab': {
            \       'active': [ 'filename', 'modified' ],
            \       'inactive': [ 'filename', 'modified' ],
            \   },
            \   'separator': { 'left': '', 'right': '' },
            \   'subseparator': { 'left': '', 'right': '' }
        \ }


" toggle invisible characters
set list
" set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set listchars=tab:→\ ,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Appearance
set number " show line numbers
set relativenumber
set nowrap " turn off word wrap
set so=9 "set 9 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

" switch cursor to line when in insert mode, and block when not
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175

" tmux integration
Plugin 'benmills/vimux'

" terraform plugins
Plugin 'hashivim/vim-terraform'

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
"

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Yank to system clipboard
" does not work? Check this out
set clipboard=unnamed

colorscheme elflord
set hlsearch
set cursorline

" Be sure to turn on both smartcase and ignorecase to enable expected behaviour - for example, as per
" https://www.hillelwayne.com/post/intermediate-vim/
set smartcase
set ignorecase

" Clear "screen clears search highlighting.
nnoremap <C-L> :nohlsearch<CR><C-L>

" Edit vimr configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>

" Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

" New tab
nnoremap <Leader>tn :tabnew<CR>

" NERDTree shortcuts
" https://github.com/preservim/nerdtree#how-can-i-map-a-specific-key-or-shortcut-to-open-nerdtree
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <leader> :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

syntax on

" Treat Jenkunsfile as a Groovy script
au BufNewFile,BufRead Jenkinsfile setf groovy

set tabstop=2
