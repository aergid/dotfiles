" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_char =  '┆'
let g:indentLine_fileTypeExclude = ['startify','tagbar','vista_kind','vista']
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel =1

autocmd BufWinEnter <buffer> match Error /\s\+$/
autocmd InsertEnter <buffer> match Error /\s\+\%#\@<!$/
autocmd InsertLeave <buffer> match Error /\s\+$/
" autocmd BufWinLeave <buffer> call clearmatches()

" :set list lcs=tab:\>\ 
let g:indentLine_fileTypeExclude = ['markdown']
