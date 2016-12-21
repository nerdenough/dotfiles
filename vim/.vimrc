filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Keybindings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Customisations
set encoding=utf-8
set ruler
set number
set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
set ignorecase
set updatetime=250
set nowrap
set laststatus=2
set timeoutlen=50
set t_Co=256
" set listchars=tab:>·,space:·
" set list

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_typescript_checkers = []
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_loc_list_height=3

" Airline
let g:airline_powerline_fonts=0
let g:airline_theme='base16'

" Indent Guides
let g:indent_guides_start_level=2

" Commands
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufNewFile,BufRead *.java set tabstop=4 shiftwidth=4

" Syntax and theme
syntax on
let base16colorspace=256
colorscheme base16-bright
set background=dark

" Transparency
hi Normal ctermbg=none
hi LineNr ctermbg=none
