let g:vista_default_executive = 'ctags'

let g:vista_executive_for = {
    \ 'python': 'coc',
    \ 'haskell': 'coc',
    \ 'vimwiki': 'markdown',
    \ 'pandoc': 'markdown',
    \ 'markdown': 'toc',
    \ }

" let g:vista_ctags_cmd = {
"     \ 'haskell': 'hasktags -o - -c',
"     \ }

let g:vista_echo_cursor_strategy = 'floating_win'

let g:vista_fzf_preview = ['right:50%']

let g:vista#executive#ctags#support_json_format = 1
let g:vista#executives = ['ale', 'coc', 'ctags', 'lcn', 'vim_lsp']
let g:vista#renderer#ctags = 'default'
let g:vista#renderer#default#vlnum_offset = 3
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {'subroutine': '洛', 'method': '', 'func': '', 'variables': '', 'namespace': '', 'field': '綠', 'interface': '禍', 'type': '', 'packages': '', 'property': '襁', 'implementation': '', 'default': '', 'augroup': 'פּ', 'macro': '', 'enumerator': '', 'const': '', 'macros': '', 'map': 'פּ', 'fields': '綠', 'functions': '', 'enum': '', 'function': '', 'target': '', 'typedef': '', 'variable': '', 'modules': '', 'constant': '', 'struct': 'פּ', 'types': '', 'module': '', 'typeParameter': '', 'package': '', 'class': '', 'member': '', 'var': '', 'union': '鬒'}
let g:vista_default_executive = 'ctags'
