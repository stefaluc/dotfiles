"vim-plug plugins
call plug#begin('~/vim/vim-plug')
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'w0rp/ale'
Plug 'mustache/vim-mustache-handlebars'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
call plug#end()

let g:javascript_plugin_flow = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:mustache_abbreviations = 1

filetype plugin indent on
syntax enable

set number
set relativenumber

"tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"cursor line
set cursorline
hi CursorLine ctermbg=238 cterm=none

" Change cursor shape on insert mode in tmux
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\" " Vertical bar
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" " Block bar

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

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

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
