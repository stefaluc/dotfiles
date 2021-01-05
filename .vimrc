"vim-plug plugins
call plug#begin('~/vim/vim-plug')
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'mustache/vim-mustache-handlebars'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
call plug#end()

let g:javascript_plugin_flow = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:mustache_abbreviations = 1
let g:jsx_ext_required = 0

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

filetype plugin indent on
syntax enable

set number

let mapleader = "\<Space>"

"tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"cursor line
set cursorline
hi CursorLine ctermbg=238 cterm=none

" Change cursor shape on insert mode in tmux (mac)
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\" " Vertical bar
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" " Block bar

" Change cursor shape on insert mode in tmux (linux)
"if has("autocmd")
"  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"endif

" fzf.vim
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
" jinoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

map <C-n> :NERDTreeToggle<CR> " Open NERDTree with Ctrl+n
let NERDTreeShowHidden=1 " show hidden files
let g:NERDTreeWinSize=20 " Default NerdTreeDisplaySize

" map Ctrl+c to escape and unmap escape
vnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
inoremap <Esc> <nop>
vnoremap <Esc> <nop>

" Weird backspace in insert mode fix
set backspace=2

" Change directory that swap files are stored
set swapfile
set dir=~/tmp

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" vim-go
" navigate through build errors
nnoremap <leader>a :cclose<CR>
map <C-,> :cnext<CR>
map <C-.> :cprevious<CR>
" :GoBuild :GoRun :GoDoc with <leader>b/r/d
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>d  <Plug>(go-doc)
" More syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
