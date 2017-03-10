"vim-plug plugins
call plug#begin('~/.vim/vim-plug')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'w0rp/ale'
call plug#end()

filetype plugin indent on
syntax enable

"dont require .jsx extension
let g:jsx_ext_required = 0
"JSdocs syntax highlighting
let g:javacsript_plugin_flow = 1
"ale lint on save rather than continuously
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

"Display line numbers
set number
"Change tab length to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cursorline
hi CursorLine ctermbg=DarkGrey cterm=none
set autoindent
