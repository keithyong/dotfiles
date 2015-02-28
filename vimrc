" ---- Color Scheme ---------------------------------
let &t_Co=256
set term=xterm-256color
set background=light
colorscheme base16-solarized

" ---- Vundle ---------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'

" File system browsing with <->
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'

Plugin 'junegunn/goyo.vim'
Plugin 'mhinz/vim-startify'
Plugin 'lervag/vim-latex'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-expand-region'
Plugin 'garbas/vim-snipmate'
Plugin 'koron/nyancat-vim'

" Autocompletion for braces, parenthesis, quotes, etc.
Plugin 'Raimondi/delimitMate'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'jshint/jshint'
Plugin 'maksimr/vim-jsbeautify'

" Neocomplete
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'Shougo/neocomplete'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

" ---- Keybinds -------------------------------------
" Leader mappings
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>g yyp
nnoremap <Leader>q :q<CR>
nnoremap ;j <Esc>:update<Cr>

" Insert at end of line
nnoremap <Leader>; <S-a>;<Esc>
nnoremap <Leader>, <S-a>,<Esc>

" Plugin hotkeys
nnoremap <Leader>1 :Goyo<CR>
nnoremap <Leader>3 :call JsBeautify()<CR>
nnoremap <Leader>4 :SyntasticToggleMode<CR>
nnoremap <Leader>0 :PluginInstall<CR>

nnoremap <Leader>c :SyntasticCheck<CR>

" Leader modify dotfiles
map <Leader>ev :e ~/.vimrc<CR>
map <Leader>eg :e ~/.gvimrc<CR>
map <Leader>ez :e ~/.zshrc<CR>
map <Leader>dot :e ~/<CR>

" Leader go to directory
map <Leader>er :e ~/Desktop/projects<CR>
map <Leader>lr :e ~/Desktop/learn<CR>
map <Leader>sc :e ~/Dropbox/Spring2014/<CR>

" Split movement keybinds
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>f <C-w>w
nnoremap <Leader>s <C-w>s
nnoremap <Leader>v <C-w>v

" Buffer mappings
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>l :bnext<CR>

" Close current buffer and move to previous one
nnoremap <Leader>q :bp <BAR> bd #<CR>

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
let g:syntastic_javascript_checkers = ['jsxhint']

let g:syntastic_mode_map = { 'mode': 'passive' }

" ---- neocompleteme --------------------------------
let g:neocomplete#enable_at_startup = 1

" <TAB>: completetion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


" ---- Airline --------------------------------------
let g:airline_powerline_fonts = 1
set laststatus=2

" List buffers on the top
let g:airline#extensions#tabline#enabled = 1

" Show just filename
let g:airline#extensions#tabline#fnamemod = ':t'

" ---- NERDTree -------------------------------------
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" ---- Ctrl-P ---------------------------------------
"  Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is
" in version control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

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

" Make vim time out faster from ESC
set timeoutlen=1000 ttimeoutlen=0

