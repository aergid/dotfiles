"https://github.com/vim-airline/vim-airline
let g:airline#extensions#vista#enabled = 0
" enable tabline
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffers_label = ''

let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#tabline#ignore_bufadd_pat = 'defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'

let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''

let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#tabs_label = ''

" Works for both buffers (when no tabs) and tabs
nmap <a-1> <Plug>AirlineSelectTab1
nmap <a-2> <Plug>AirlineSelectTab2
nmap <a-3> <Plug>AirlineSelectTab3
nmap <a-4> <Plug>AirlineSelectTab4
nmap <a-5> <Plug>AirlineSelectTab5
nmap <a-6> <Plug>AirlineSelectTab6
nmap <a-7> <Plug>AirlineSelectTab7
nmap <a-8> <Plug>AirlineSelectTab8
nmap <a-9> <Plug>AirlineSelectTab9
nmap <a-0> <Plug>AirlineSelectTab0


" enable powerline fonts
let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''



" Switch to your current theme
let g:airline_theme = 'molokai'
" let g:airline_theme = 'term'
" let g:airline_theme = 'hybrid'
" let g:airline_theme = 'hybridline'
" let g:airline_theme = 'jellybeans'
" let g:airline_theme = 'ayu_mirage'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode


" Sections
" let g:airline_section_a = ""
" let g:airline_section_y = ''
let g:webdevicons_enable_airline_tabline = 1
