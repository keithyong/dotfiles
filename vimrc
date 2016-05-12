" vim: set foldmethod=marker foldlevel=0:
" set t_Co=256
colorscheme base16-solarized
set background=light
" Disable h and l
" nnoremap l <nop>
" nnoremap h <nop>

" Disable j and k
" nnoremap j <nop>
" nnoremap k <nop>


" ============================================================================
" PLUGINS {{{
" ============================================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'

Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim'

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
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/MatchTag'
Plugin 'docunext/closetag.vim'

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

" Latex
Plugin 'lervag/vimtex'

" Neocomplete
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

" UltiSnips
Plugin 'SirVer/ultisnips'

" Jinja2
Plugin 'Glench/Vim-Jinja2-Syntax'

" Ruby
Plugin 'vim-ruby/vim-ruby'

" ReactJS
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

" }}}
" ============================================================================
" BASIC OPTIONS {{{
" ============================================================================
syntax enable
set backspace=2
set top                     " The width of a TAB is set to 4.
set shiftwidth=4            " Number of spaces for a TAB
set softtabstop=4           " Number of spaces in TAB when editing
set expandtab               " Expand TABs to spaces
set number                  " Show line numbers
set clipboard=unnamed       " Share with system clipboard

set nrformats=              " Don't use octal scheme for [num]<C-a> and <C-x>"

set display+=lastline       " On long lines, always display them partially

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Return cursor to previous position on load
autocmd BufReadPost * normal `"

" Trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" .ejs syntax
" au BufNewFile,BufRead *.ejs set filetype=html

" Set ruby index to be 2 spaces
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

set encoding=utf-8
set guifont=Liberation\ Mono\ for\ Powerline:h14

" zsh completion menu on ex
set wildmenu
set wildmode=full

" }}}
" ============================================================================
" KEYBINDS {{{
" ============================================================================
" Leader mappings
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>g yyp
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>q :q<CR>

" Insert at end of line
nnoremap <Leader>; <S-a>;<Esc>
nnoremap <Leader>, <S-a>,<Esc>

" Plugin hotkeys
nnoremap <Leader>1 :Goyo<CR>
nnoremap <Leader>3 :call JsBeautify()<CR>
nnoremap <Leader>4 :SyntasticToggleMode<CR>
nnoremap <Leader>0 :PluginInstall<CR>

" Open Up Tabularize on command line
nnoremap <Leader>t :Tabularize/

" Call :UltiSnipsEdit to edit the current
" snippets file for the current extension.
nnoremap <Leader>use :UltiSnipsEdit<CR>

nnoremap <Leader>\\ <plug>(vimtex-compile-toggle)

nnoremap <Leader>c :SyntasticCheck<CR>

" Leader modify dotfiles
nnoremap <Leader>ev :e ~/.vimrc<CR>
nnoremap <Leader>eg :e ~/.gvimrc<CR>
nnoremap <Leader>ez :e ~/.zshrc<CR>

" Leader go to directory
nnoremap <Leader>er :e ~/Desktop/projects<CR>
nnoremap <Leader>el :e ~/Desktop/learn<CR>
nnoremap <Leader>ei :e ~/Desktop/interview-questions<CR>
nnoremap <Leader>ec :e ~/Desktop/projects/conf-main<CR>
nnoremap <Leader>esc :e ~/Dropbox/Spring2014/<CR>

" Split movement keybinds
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
" nnoremap <Leader>l <C-w>l
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

" Close current buffer and move to next one
nnoremap <Leader>x :bn <BAR> bd #<CR>

inoremap {<CR> {<CR>}<C-o>O

" Insert a new line under without going into insert mod>
nmap <S-Enter> o<Esc>

" Use arrow keys to resize windows.
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>

" Date time insertions
" imap <Leader>;ds     <C-R>=strftime("%Y-%m-%d %T")<CR>
" }}}
" ============================================================================
" SYNTASTIC {{{
" ============================================================================
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

" }}}
" ============================================================================
" ============================================================================
" AIRLINE {{{
" ============================================================================
let g:airline_powerline_fonts = 1
" set laststatus=2

" List buffers on the top
let g:airline#extensions#tabline#enabled = 1

" Show just filename
let g:airline#extensions#tabline#fnamemod = ':t'

" }}}
" ============================================================================
" NERDTREE {{{
" ============================================================================
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" }}}
" ============================================================================
" ULTISNIPS {{{
" ============================================================================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" }}}
" ============================================================================
" CTRL-P {{{
" ============================================================================
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

" }}}
" ============================================================================
" STARTIFY {{{
" ============================================================================
let g:startify_custom_header = [
            \'   Welcome to Vim, Keith!',
            \'   ']

" }}}
" ============================================================================
" AUTO-SAVE OPTIONS {{{
" ============================================================================
:au FocusLost * :wa
inoremap <Esc> <Esc>:w<CR>
:hi NonText guifg=bg

" }}}
" ============================================================================
" ============================================================================
" COMMENTARY {{{
" ============================================================================
" Neocomplete integration
autocmd FileType html setlocal commentstring=<!--\ %s\ -->
" }}}
" ============================================================================
" closetag {{{
" ============================================================================
" Source closetag script
au Filetype html,xml,xsl source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
" }}}
