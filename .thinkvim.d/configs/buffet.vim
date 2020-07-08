let g:buffet_always_show_tabline = 1
let g:buffet_powerline_separators = 0
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

" let g:buffet_separator = "|"
let g:buffet_use_devicons = 1
let g:buffet_tab_icon = ""
let g:buffet_modified_icon = "+"
let g:buffet_hidden_buffers = ["terminal", "quickfix"]


" * `BuffetCurrentBuffer` - the current buffer.
" * `BuffetActiveBuffer` - an active buffer (a non-current buffer visible in
"   a non-current window).
" * `BuffetBuffer` - a non-current and non-active buffer.
" * `BuffetModCurrentBuffer` - the current buffer when modified.
" * `BuffetModActiveBuffer` - a modified active buffer (a non-current buffer visible in
"   a non-current window).
" * `BuffetModBuffer` - a modified non-current and non-active buffer.
" * `BuffetTrunc` - the truncation indicator (count of truncated buffers
"   from the left or right).
" * `BuffetTab` - a tab.

function! g:BuffetSetCustomColors()
    hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#7daea3 guifg=#000000
endfunction

" Here are some recommended mappings to boost your navigation experience:
" ```
" noremap <Tab> :bn<CR>
" noremap <S-Tab> :bp<CR>
" noremap <Leader><Tab> :Bw<CR>
" noremap <Leader><S-Tab> :Bw!<CR>
" noremap <C-t> :tabnew split<CR>
" ```
