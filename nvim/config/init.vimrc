call plug#begin('~/.local/share/nvim/plugged')

" General
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Editing
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'editorconfig/editorconfig-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'

" Markdown
Plug 'reedes/vim-pencil'

call plug#end()
