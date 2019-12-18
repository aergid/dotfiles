command! -nargs=0 MetalsDoctor :call CocRequestAsync('metals', 'workspace/executeCommand', { 'command': 'doctor-run' })
command! -nargs=0 MetalsImport :call CocRequestAsync('metals', 'workspace/executeCommand', { 'command': 'build-import' })
command! -nargs=0 MetalsConnect :call CocRequestAsync('metals', 'workspace/executeCommand', { 'command': 'build-connect' })

"terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

"easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)


"pipe ex command output to new tab
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    tabnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

"wiki
"Open today's diary page
nnoremap <Leader>w<Leader>w :e ~/ownCloud/wikis/vimwiki/diary/`date +\%Y-\%m-\%d`.md<CR>

" Abbreviation to insert the current date when typings "cdate"
:iab cdate <c-r>=strftime("%Y-%m-%d")<CR>

" Bindings to underline the current line with "=" or "-" (Markdown H1 and H2 respectively).
autocmd BufEnter, *.md nnoremap <Leader>u YpVr-
autocmd BufEnter, *.md nnoremap <Leader>U YpVr=

set conceallevel=2
set concealcursor=""

"tabs and spaces
au BufRead,BufNewFile {*.md,*.mkd,*.markdown,*.wiki} set ft=markdown
autocmd FileType md,mkd,markdown,wiki setlocal ts=2 sts=2 sw=2 expandtab

au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"golden rule: set tabstop = softtabstop = shiftwidth
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

"jinja
let g:sls_use_jinja_syntax = 1

"restore normal diff navigation
"some problems with [which-key] otherwise
nnoremap <expr> ]c &diff ? ']c' : ']c'
nnoremap <expr> [c &diff ? '[c' : '[c'

"Terminal reg-like insert <A-r>reg
if has('nvim')
  tnoremap <expr> <A-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif

"enable mouse for splits resizings
set mouse=a

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Поиск и замена слова под курсором
nmap <C-h> :%s/\<<c-r>=expand("<cword>")<cr>\>/

"==============================================================================
"diff rules
set diffopt+=iwhite

if &diff
    set t_Co=256
    set wrap
    set linebreak
    set nolist  " list disables linebreak
    set textwidth=0
    set wrapmargin=0
endif

au FilterWritePre * if &diff | set t_Co=256 |  set wrap | set linebreak | set nolist | set textwidth=0 | set wrapmargin=0 | endif

"==============================================================================
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
"another way
"set keymap=russian-jcukenwin
"set iminsert=0
"set imsearch=0
"set imcmdline
"
"yet another way

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let g:spaceline_seperate_style= 'none'
"let g:spaceline_line_symbol = 0
"
"base16_twilight'
"base16_classic'
"base16_monokai'
"base16_harmonic16'
"molokai
"papercolor
"peaksea
"wombat
"raven
"hybrid
"base16_gruvbox_dark_hard
"
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

let g:airline_powerline_fonts = 1

""" ------------------- COC config -----------------------
""
""" Smaller updatetime for CursorHold & CursorHoldI
""set updatetime=300
""
""" don't give |ins-completion-menu| messages.
""set shortmess+=c
""
""" always show signcolumns
""set signcolumn=yes
""
""" Some server have issues with backup files, see #649
""set nobackup
""set nowritebackup
""
""" Better display for messages
""set cmdheight=2
""
""" Use <c-space> for trigger completion.
""inoremap <silent><expr> <c-space> coc#refresh()
""
""" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
""" Coc only does snippet and additional edit on confirm.
""inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
""
""" Use `[c` and `]c` for navigate diagnostics
""nmap <silent> [c <Plug>(coc-diagnostic-prev)
""nmap <silent> ]c <Plug>(coc-diagnostic-next)
""
""" Remap keys for gotos
""nmap <silent> gd <Plug>(coc-definition)
""nmap <silent> gy <Plug>(coc-type-definition)
""nmap <silent> gi <Plug>(coc-implementation)
""nmap <silent> gr <Plug>(coc-references)
""
""" Remap for do codeAction of current line
""nmap <leader>ac <Plug>(coc-codeaction)
""
""" Remap for do action format
"""nmap <silent> F <Plug>(coc-action-format) "does not work
""nnoremap <silent> F :call CocAction('format')<CR>
""
""" Show signature help
""autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
""
""" Use K for show documentation in preview window
""nnoremap <silent> K :call <SID>show_documentation()<CR>
""
""function! s:show_documentation()
""  if &filetype == 'vim'
""    execute 'h '.expand('<cword>')
""  else
""    call CocAction('doHover')
""  endif
""endfunction
""
""" Highlight symbol under cursor on CursorHold
""autocmd CursorHold * silent call CocActionAsync('highlight')
""
""" Remap for rename current word
""nmap <leader>rn <Plug>(coc-rename)
""
""" Show all diagnostics
""nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
""" Find symbol of current document
""nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
""" Search workspace symbols
""nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
""" Do default action for next item
""nnoremap <silent> <space>j  :<C-u>CocNext<CR>
""" Do default action for previous item.
""nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
""" Resume latest coc list
""nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
""
""" close preview (shown for hover / signature help)
""nnoremap <leader> <Esc> :pclose<CR>
""
""nnoremap <silent> <M-B> :call CocRequest('metals-vim', 'workspace/executeCommand', { 'command': 'build-import' })<CR>
"""nnoremap <silent> <M-Z> :ccl<CR>
""
""" COC Snippets
""
""" Use <C-l> for trigger snippet expand.
""imap <C-l> <Plug>(coc-snippets-expand)
""
""" Use <C-j> for select text for visual placeholder of snippet.
""vmap <C-j> <Plug>(coc-snippets-select)
""
""" Use <C-j> for jump to next placeholder, it's default of coc.nvim
""let g:coc_snippet_next = '<c-j>'
""
""" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
""let g:coc_snippet_prev = '<c-k>'
""
""" Use <C-j> for both expand and jump (make expand higher priority.)
""imap <C-j> <Plug>(coc-snippets-expand-jump)
