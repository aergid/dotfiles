let g:tmux_navigator_no_mappings = 1
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" Terminal window navigation
tnoremap <silent> <C-h> <C-\><C-N><C-w>h
tnoremap <silent> <C-j> <C-\><C-N><C-w>j
tnoremap <silent> <C-k> <C-\><C-N><C-w>k
tnoremap <silent> <C-l> <C-\><C-N><C-w>l
inoremap <silent> <C-h> <C-\><C-N><C-w>h
inoremap <silent> <C-j> <C-\><C-N><C-w>j
inoremap <silent> <C-k> <C-\><C-N><C-w>k
inoremap <silent> <C-l> <C-\><C-N><C-w>l
tnoremap <silent> <C-\> <C-\><C-n>
