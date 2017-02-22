" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_loc_list_height=3

" Base16
let base16colorspace=256
colorscheme base16-unikitty-light

" Transparency
hi Normal ctermbg=none
hi LineNr ctermbg=none
