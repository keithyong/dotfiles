" Colorscheme
let &t_Co=256
set term=xterm-256color
set background=dark
colorscheme gruvbox

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins. Run :PluginInstall in vim to install them!
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/goyo.vim'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lervag/vim-latex'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'jshint/jshint'
Plugin 'scrooloose/syntastic'

" Startup commands
" autocmd VimEnter * Goyo

let g:airline_powerline_fonts = 1


" Keybinds
map <F2> :Goyo
map <F3> :NERDTree
map <F4> :PluginInstall

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on

" Basic stuff
syntax enable
set top                     " The width of a TAB is set to 4.
set shiftwidth=4            " Indents will have a width of 4
set softtabstop=4           " Sets the number of columns for a TAB
set expandtab               " Expand TABs to spaces
set number
set clipboard=unnamed

" vim-airline config
set laststatus=2

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"        " Vertical bar in insert mode
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"    " Block in normal mode
endif

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Insert a new line under without going into insert mod>
nmap <S-Enter> O<Esc>

" LaTeX stuff

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Enable auto saving
let g:auto_save = 1

:au FocusLost * :wa
inoremap <Esc> <Esc>:w<CR> 
:hi NonText guifg=bg

let g:startify_custom_header = [
            \'   Welcome to Vim, Keith!',
            \'   ']
