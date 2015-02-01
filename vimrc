" ---- Color Scheme ---------------------------------
let &t_Co=256
set term=xterm-256color
set background=dark
colorscheme gruvbox

" ---- Vundle ---------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-vinegar'
Plugin 'gmarik/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lervag/vim-latex'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'
Plugin 'jshint/jshint'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-expand-region'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on

" ---- Keybinds -------------------------------------
" Plugin hotkeys
map <F2> :Goyo<CR>
map <F3> :NERDTree<CR>
map <F4> :call JsBeautify()<CR>
map <F5> :PluginInstall<CR>

" Leader mappings
let mapleader = "\<Space>"
map <Leader>ev :e ~/.vimrc<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>g yyp
nnoremap <Leader>q :q<CR>
nnoremap <Leader><Leader> :
nnoremap ;j <Esc>:update<Cr>
nnoremap <Leader>; <S-a>;<Esc>

" Split movement keybinds
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>f <C-w>w

inoremap {<CR> {<CR>}<C-o>O

" Insert a new line under without going into insert mod>
nmap <S-Enter> O<Esc>

" Map v vv vvv -> visual visual-word visual paragraph
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" ---- Syntastic ------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']
" ---- Airline --------------------------------------
let g:airline_powerline_fonts = 1
set laststatus=2

" ---- NERDTree -------------------------------------
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" ---- Startify -------------------------------------
let g:startify_custom_header = [
            \'   Welcome to Vim, Keith!',
            \'   ']

" ---- Auto Saving ----------------------------------
:au FocusLost * :wa
inoremap <Esc> <Esc>:w<CR> 
:hi NonText guifg=bg

" ---- Basic Options --------------------------------
syntax enable
set top                     " The width of a TAB is set to 4.
set shiftwidth=4            " Indents will have a width of 4
set softtabstop=4           " Sets the number of columns for a TAB
set expandtab               " Expand TABs to spaces
set number
set clipboard=unnamed

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"        " Vertical bar in insert mode
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"    " Block in normal mode
endif

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" ---- LaTeX Suite ----------------------------------
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

