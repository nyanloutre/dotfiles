call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'dpelle/vim-Grammalecte'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'

call plug#end()

let g:grammalecte_cli_py='/usr/share/grammalecte-fr/cli.py'
