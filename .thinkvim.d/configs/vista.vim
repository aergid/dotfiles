let g:vista_default_executive = 'ctags'

let g:vista_executive_for = {
    \ 'cpp': 'coc',
    \ 'java': 'coc',
    \ 'scala': 'coc',
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

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
