"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


hi Visual  guifg=White guibg=Orange gui=none

"1" disable all keymaps of plugins
let g:thinkvim_disable_mappings = 0
" disable some plugins keymap
let g:thinkvim_disable_pmaping = ['vim-buffet']

"call utils#source_file($THINKVIM,'configs/vim-tmux.vim')

set textwidth=0     " Text width maximum chars before wrapping
set expandtab       " Don't expand tabs to spaces
set tabstop=4       " The number of spaces a tab is
set shiftwidth=4    " Number of spaces to use in auto(indent)

set timeoutlen=300

" You will have a bad experience with diagnostic messages with the default 4000.
set updatetime=300

" Don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show signcolumns
set signcolumn=yes
"
" Help Vim recognize *.sbt and *.sc as Scala files
au BufRead,BufNewFile *.sbt,*.sc set filetype=scala

map ; :
noremap ;; ;

inoremap jk <Esc>
inoremap kj <Esc>
inoremap <esc> <nop>

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Used to expand decorations in worksheets
nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>rf  <Plug>(coc-format-selected)
nmap <leader>rf  <Plug>(coc-format-selected)

" Toggle panel with Tree Views
nnoremap <silent> <space>tt :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>


" Remap for destroying trailing whitespace cleanly
:nnoremap <silent> <F5> :let _save_pos=getpos(".") <Bar>
    \ :let _s=@/ <Bar>
    \ :%s/\s\+$//e <Bar>
    \ :let @/=_s <Bar>
    \ :nohl <Bar>
    \ :unlet _s<Bar>
    \ :call setpos('.', _save_pos)<Bar>
    \ :unlet _save_pos<CR><CR>

function! CloseAllBuffersButCurrent()
  " simple close all and restore current, kill unnamed
  " execute "%bd\|e#\|bd#"

  " don't close current buffer
  " so it is preserved in all splits and tabs

  let first = bufnr("1")
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > first | silent! execute first.",".(curr-1)."bd" | endif
  if curr < last  | silent! execute (curr+1).",".last."bd"  | endif
endfunction


"wiki
"Open today's diary page
nnoremap <Leader>w<Leader>w :e ~/YaD/Notes/diary/`date +\%Y-\%m-\%d`.md<CR>

function! SetDiffColors()
    hi DiffAdd guifg=#b8bb26 guibg=#282828 guisp=NONE gui=reverse cterm=reverse
    hi DiffChange guifg=#8ec07c guibg=#282828 guisp=NONE gui=reverse cterm=reverse
    hi DiffDelete guifg=#fb4934 guibg=#282828 guisp=NONE gui=reverse cterm=reverse
    hi DiffText guifg=#fabd2f guibg=#282828 guisp=NONE gui=reverse cterm=reverse
endfunction

au BufEnter * if &diff | call SetDiffColors() |endif

command! -nargs=0 Review tab sball | tabdo Gvdiffsplit master...HEAD
