"if dein#tap('lightline.vim')
""" lightline.vim {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
    \ 'colorscheme': 'gruvbox_material',
  	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitstatus' ],
    \             [ 'filename' ], ],
	\   'right': [ [ 'lineinfo',  ],
    \              [ 'readonly',  'modified', 'fileformat', 'fileencoding', 'filetype'],
	\              [ 'currentfunction', 'cocstatus' ] ]
	\ },
    \   'left': [ [ 'fname' ], ],
    \   'inactive': {
    \   },
    \   'tabline': {
    \     'left': [ [ 'buffers' ], ],
    \   },
    \   'component': {
    \     'lineinfo': '%3p%%  %l/%-L',
    \     'fname': '%<%f',
    \   },
    \   'component_expand': {
    \     'buffers': 'lightline#bufferline#buffers',
    \   },
    \   'component_type': {
    \     'buffers'          : 'tabsel',
    \   },
    \   'component_function': {
    \     'bufferinfo': 'lightline#buffer#bufferinfo',
    \     'currentfunction': 'CocCurrentFunction',
    \     'coc'      : 'StatusDiagnostic',
    \     'cocstatus': 'coc#status',
    \     'gitstatus': 'GitStatus',
    \     'modified': 'LightlineModified',
    \     'readonly': 'LightlineReadonly',
    \     'filetype': 'MyFiletype',
    \     'fileformat': 'MyFileformat',
    \   },
    \   'separator':{
    \     'left': '', 'right': ''
    \   },
    \   'subseparator':{
    \      'left': '\uFE19', 'right': '\uFE19'
    \   },
    \}

let g:lightline.subseparator = { 'left': "|", 'right': "|" }

" reloading the config
function! LightlineReload()
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

command! LightlineReload call LightlineReload()

let g:lightline#bufferline#enable_devicons   = 1
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#shorten_path      = 0
let g:lightline#bufferline#show_number       = 1
let g:lightline#bufferline#unicode_symbols   = 1
let g:lightline#bufferline#unnamed           = 'NO NAME'

function! LightlineModified()
    return &modified ? '●' : ''
endfunction

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! GitStatus()
"let [a,m,r] = GitGutterGetHunkSummary()
let l:branch = fugitive#head()
if l:branch == ""
    return ''
else
    return printf('+%d ~%d -%d |  %s', 0, 0, 0, l:branch)
endif
endfunction

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' ').' '. get(g:, 'coc_status', '')
endfunction

"endif
" }}}
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
