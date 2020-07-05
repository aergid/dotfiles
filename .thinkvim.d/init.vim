"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


"1" disable all keymaps of plugins
let g:thinkvim_disable_mappings = 0
" disable some plugins keymap
"let g:thinkvim_disable_pmaping = []

"call utils#source_file($THINKVIM,'configs/vim-tmux.vim')

set textwidth=0     " Text width maximum chars before wrapping
set expandtab       " Don't expand tabs to spaces
set tabstop=4       " The number of spaces a tab is
set shiftwidth=4    " Number of spaces to use in auto(indent)

set timeoutlen=300
"
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
