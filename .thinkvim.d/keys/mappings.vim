let g:mapleader = "\<Space>"
let g:maplocalleader = ","

nnoremap Y y$

" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Don't use shift for commands
" handle t & f next command as ':'
" nnoremap ; :
" nnoremap : ;
" vnoremap ; :
" vnoremap : ;
map ; :
noremap ;; ;

" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

" isolate current buffer in new tab
" nnoremap <silent> <TAB> :call IsolateWindow()<CR>
nnoremap <TAB> <C-W><S-T>
" kill tab
nnoremap <silent> <S-TAB> :tabclose<CR>

" Motions
nnoremap  ]b :bn<CR>
nnoremap  [b :bp<CR>
nnoremap  ]q :cn<CR>
nnoremap  [q :cp<CR>
nnoremap  ]t :tabn<CR>
nnoremap  [t :tabp<CR>
" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Navigation mappings moved to vim-tmux settings

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" Remap for destroying trailing whitespace cleanly
:nnoremap <silent> <F5> :let _save_pos=getpos(".") <Bar>
    \ :let _s=@/ <Bar>
    \ :%s/\s\+$//e <Bar>
    \ :let @/=_s <Bar>
    \ :nohl <Bar>
    \ :unlet _s<Bar>
    \ :call setpos('.', _save_pos)<Bar>
    \ :unlet _save_pos<CR><CR>

"wiki
"Open today's diary page
nnoremap <Leader>w<Leader>w :e ~/YaD/Notes/diary/`date +\%Y-\%m-\%d`.md<CR>
