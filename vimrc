nnoremap l <nop>
nnoremap h <nop>

" ---- Color Scheme ---------------------------------
let &t_Co=256
set term=xterm-256color
colorscheme base16-solarized
set background=dark

" " Switch between light and dark based on time of day
" let hour = strftime("%H")
" if 6 <= hour && hour < 18
"   set background=light
" else
"   set background=dark
" endif

" ---- Vundle ---------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'


" File system browsing with '-' hotkey
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'

Plugin 'junegunn/goyo.vim'
Plugin 'mhinz/vim-startify'
Plugin 'bling/vim-airline'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-expand-region'
Plugin 'godlygeek/tabular'

" ctrlp
Plugin 'kien/ctrlp.vim'

" Autocompletion for braces, parenthesis, quotes, etc.
Plugin 'Raimondi/delimitMate'

" Javascript and Node
Plugin 'pangloss/vim-javascript'
Plugin 'jshint/jshint'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'digitaltoad/vim-jade'
Plugin 'marijnh/tern_for_vim'

" Latex
Plugin 'lervag/vim-latex'

" Neocomplete
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'Shougo/neocomplete'

" UltiSnips
Plugin 'SirVer/ultisnips'

call vundle#end()
filetype plugin indent on

" ---- Keybinds -------------------------------------
" Leader mappings
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>g yyp
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
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
" nnoremap <Leader>t :Tabularize/

" Call :UltiSnipsEdit to edit the current
" snippets file for the current extension.
nnoremap <Leader>use :UltiSnipsEdit<CR>

nnoremap <Leader>c :SyntasticCheck<CR>

" Leader modify dotfiles
map <Leader>ev :e ~/.vimrc<CR>
map <Leader>eg :e ~/.gvimrc<CR>
map <Leader>ez :e ~/.zshrc<CR>

" Leader go to directory
map <Leader>er :e ~/Desktop/projects<CR>
map <Leader>el :e ~/Desktop/learn<CR>
map <Leader>ec :e ~/Desktop/projects/pyramus<CR>
map <Leader>sc :e ~/Dropbox/Spring2014/<CR>

" Split movement keybinds
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>h <C-w>h

nnoremap <Leader>f <C-w>w
nnoremap <Leader>s <C-w>s
nnoremap <Leader>v <C-w>v

" Function comment
nnoremap <Leader>z o// ------------------------------<CR>------------------------------<Esc>O

" Buffer mappings
nnoremap H :bprevious<CR>
nnoremap L :bn<CR>

" Movement
nnoremap <D-j> 5jzz
nnoremap <D-k> 5kzz

" Close current buffer and move to previous one
nnoremap <Leader>x :bp <BAR> bd #<CR>

inoremap {<CR> {<CR>}<C-o>O

" Insert a new line under without going into insert mod>
nmap <S-Enter> o<Esc>

" ---- Syntastic ------------------------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['jsxhint']

let g:syntastic_mode_map = { 'mode': 'passive' }

" ---- neocompleteme --------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_fuzzy_completion = 0
let g:neocomplete#enable_smart_case = 1

" ---- vim-multiple-cursors -------------------------
" Make plugin neocompleteme friendly
 function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

" <TAB>: completetion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" ---- Airline --------------------------------------
let g:airline_powerline_fonts = 1
" set laststatus=2

" List buffers on the top
let g:airline#extensions#tabline#enabled = 1

" Show just filename
let g:airline#extensions#tabline#fnamemod = ':t'

" ---- NERDTree -------------------------------------
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" ---- UltiSnips ------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" ---- Ctrl-P ---------------------------------------
"  Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|DS_Store)|\_site\|node_modules)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use ag search. Must install from https://github.com/ggreer/the_silver_searcher.
" Makes Ctrl-P MUCH faster
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is
" in version control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" ---- Startify -------------------------------------
let g:startify_custom_header = [
            \'   Welcome to Vim, Keith!',
            \'   ']

" ---- TernJS ---------------------------------------
let g:tern_show_argument_hints='on_hold'
nnoremap <Leader>td :TernDoc<CR>

" ---- Auto Saving ----------------------------------
:au FocusLost * :wa
inoremap <Esc> <Esc>:w<CR>
:hi NonText guifg=bg

" ---- Basic Options --------------------------------
syntax enable
set top                     " The width of a TAB is set to 4.
set shiftwidth=4            " Number of spaces for a TAB
set softtabstop=4           " Number of spaces in TAB when editing
set expandtab               " Expand TABs to spaces
set number                  " Show line numbers
set clipboard=unnamed       " Share with system clipboard

set nrformats=              " Don't use octal scheme for [num]<C-a> and <C-x>"

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Return cursor to previous position on load
autocmd BufReadPost * normal `"

" Trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" .ejs syntax
au BufNewFile,BufRead *.ejs set filetype=html
