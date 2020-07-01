nnoremap <expr> [c &diff ? '[czz' : '<Plug>(coc-git-prevchunk)'
nnoremap <expr> ]c &diff ? ']czz' : '<Plug>(coc-git-nextchunk)'
" show chunk diff at current position
nmap <Leader>gi <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <Leader>gm <Plug>(coc-git-commit)

highlight GitGutterAdd    guifg=#98c379 ctermfg=2
highlight GitGutterChange guifg=#ffcf40 ctermfg=3
highlight GitGutterDelete guifg=#ea1313 ctermfg=1
