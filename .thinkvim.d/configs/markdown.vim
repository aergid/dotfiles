" https://github.com/iamcco/markdown-preview.nvim

let g:mkdp_auto_start = 0
" Set to 1, Vim will open the preview window on entering the Markdown
" buffer.

let g:mkdp_auto_open = 0
" Set to 1, Vim will automatically open the preview window when you edit a
" Markdown file.

let g:mkdp_auto_close = 1
" Set to 1, Vim will automatically close the current preview window when
" switching from one Markdown buffer to another.

let g:mkdp_refresh_slow = 0
" Set to 1, Vim will just refresh Markdown when saving the buffer or
" leaving from insert mode. With default 0, it will automatically refresh
" Markdown as you edit or move the cursor.
let g:mkdp_browser = 'vimb'

nmap <F8> <Plug>MarkdownPreviewToggle

" https://github.com/plasticboy/vim-markdown
 let g:vim_markdown_folding_level = 1
 let g:vim_markdown_folding_style_pythonic = 1
 let g:vim_markdown_frontmatter = 1
 let g:vim_markdown_auto_insert_bullets = 0
 let g:vim_markdown_new_list_item_indent = 0
 let g:vim_markdown_conceal_code_blocks = 0
" let g:vim_markdown_conceal = 0
 let g:vim_markdown_strikethrough = 1
 let g:vim_markdown_edit_url_in = 'vsplit'
 let g:vim_markdown_fenced_languages = [
  \ 'c++=cpp',
  \ 'viml=vim',
  \ 'bash=sh',
  \ 'ini=dosini',
  \ 'js=javascript',
  \ 'json=javascript',
  \ 'jsx=javascriptreact',
  \ 'tsx=typescriptreact',
  \ 'docker=Dockerfile',
  \ 'makefile=make',
  \ 'hs=haskell',
  \ 'py=python',
  \ 'scala=scala'
  \ ]

"- repo: rhysd/vim-gfm-syntax
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_highlight_emoji = 0
let g:gfm_syntax_enable_filetypes = ['markdown']
