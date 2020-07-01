	" Map leader to which_key
	nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
	vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

	" Create map to add keys to
"let g:which_key_map =  { 'name' : 'Leader'}
"let g:which_key_localmap =  {'name' : 'LocalLeader'}

	" Define a separator
	let g:which_key_sep = '→'
	set timeoutlen=300


	" Not a fan of floating windows for this
	let g:which_key_use_floating_win = 0

	" Change the colors if you want
	highlight default link WhichKey          Operator
	highlight default link WhichKeySeperator DiffAdded
	highlight default link WhichKeyGroup     Identifier
	highlight default link WhichKeyDesc      Function

	" Hide status line
	autocmd! FileType which_key
	autocmd  FileType which_key set laststatus=0 noshowmode noruler
		\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


	" Single mappings
	let g:which_key_map['c'] = [ ':Codi!!'                    , 'virtual repl']
	let g:which_key_map['d'] = [ ':Bdelete'                   , 'delete buffer']
	let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
	let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
	let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
	let g:which_key_map['o'] = [ ':on'                        , 'close other windows' ]
	let g:which_key_map['r'] = [ ':RnvimrToggle'              , 'ranger' ]
	let g:which_key_map['s'] = [ ':SSave'                     , 'save session' ]
	let g:which_key_map['t'] = [ ':Rg'                        , 'search text' ]
	let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
	let g:which_key_map['w'] = [ 'w'                          , 'write' ]
	let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]
	" let g:which_key_map['/'] = [ ':Commentary'                , 'comment' ]
	let g:which_key_map['/'] = [ ':let @/ = ""'               , 'clear search hl' ]
	let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
	let g:which_key_map['.'] = [ ':e $MYVIMRC'                , 'open init' ]
	let g:which_key_map[','] = [ 'Startify'                   , 'start screen' ]
	let g:which_key_map[';'] = [ ':Commands'                  , 'commands' ]

	" Group mappings

	" a is for actions
	let g:which_key_map.a = {
				\ 'name' : '+actions' ,
				\ 'c' : [':ColorizerToggle'        , 'colorizer'],
				\ 'e' : [':CocCommand explorer'    , 'explorer'],
				\ 'n' : [':set nonumber!'          , 'line-numbers'],
				\ 'r' : [':set norelativenumber!'  , 'relative line nums'],
				\ 's' : [':let @/ = ""'            , 'remove search highlight'],
				\ 't' : [':FloatermToggle'         , 'terminal'],
				\ 'v' : [':Vista!!'                , 'tag viewer'],
				\ }

	" b is for buffer
	let g:which_key_map.b = {
				\ 'name' : '+buffer' ,
				\ 'o' : [':call  CloseAllBuffersButCurrent()', 'close other buffers' ] ,
				\ 'b' : ['Buffers'   , 'fzf-buffer']      ,
				\ }

	" s is for search
	let g:which_key_map.f = {
				\ 'name' : '+search' ,
				\ '/' : [':History/'              , 'history'],
				\ ';' : [':Commands'              , 'commands'],
				\ 'a' : [':Ag'                    , 'text Ag'],
				\ 'b' : [':Buffers'               , 'open buffers'],
				\ 'c' : [':BCommits'              , 'buffer commits'],
				\ 'C' : [':Commits'               , 'commits'],
				\ 'f' : [':Files'                 , 'files'],
				\ 'G' : [':GFiles'                , 'git files'],
				\ 'g' : [':GFiles?'               , 'modified git files'],
				\ 'H' : [':History:'              , 'command history'],
				\ 'h' : [':History'               , 'file history'],
				\ 'l' : [':Lines'                 , 'lines'] ,
				\ 'M' : [':Maps'                  , 'normal maps'] ,
				\ 'm' : [':Marks'                 , 'marks'] ,
				\ 'p' : [':Helptags'              , 'help tags'] ,
				\ 'P' : [':Tags'                  , 'project tags'],
				\ 's' : [':CocList snippets'      , 'snippets'],
				\ 'S' : [':Colors'                , 'color schemes'],
				\ 'T' : [':BTags'                 , 'buffer tags'],
				\ 't' : [':Rg'                    , 'text Rg'],
				\ 'w' : [':Windows'               , 'search windows'],
				\ 'y' : [':Filetypes'             , 'file types'],
				\ 'z' : [':FZF'                   , 'FZF'],
				\ }
				" \ 's' : [':Snippets'     , 'snippets'],

	" g is for git
	let g:which_key_map.g = {
				\ 'name' : '+git' ,
				\ 'A' : [':Git add .'                        , 'add all'],
				\ 'a' : [':Git add %'                        , 'add current'],
				\ 'b' : [':Git blame'                        , 'blame'],
				\ 'B' : [':GBrowse'                          , 'browse'],
				\ 'c' : [':Git commit'                       , 'commit'],
				\ 'd' : [':Gdiffsplit'                       , 'diff split'],
				\ 'D' : [':Git diff'                         , 'diff'],
				\ 'g' : [':GGrep'                            , 'git grep'],
				\ 's' : [':tab :Gstatus'                     , 'status'],
				\ 'l' : [':Git log'                          , 'log'],
				\ 'p' : [':Git push'                         , 'push'],
				\ 'P' : [':Git pull'                         , 'pull'],
				\ 't' : [':Git difftool'                     , 'quicklist difftool'],
				\ 'u' : [':CocCommand git.chunkUndo'         , 'undo hunk'],
				\ 'V' : [':GV'                               , 'view commits'],
				\ 'v' : [':GV!'                              , 'view buffer commits'],
				\ }

	" l is for language server protocol
	let g:which_key_map.l = {
				\ 'name' : '+lsp' ,
				\ '.' : [':CocConfig'                          , 'config'],
				\ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
				\ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
				\ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
				\ 'b' : [':CocNext'                            , 'next action'],
				\ 'B' : [':CocPrev'                            , 'prev action'],
				\ 'c' : [':CocList commands'                   , 'commands'],
				\ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
				\ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
				\ 'e' : [':CocList extensions'                 , 'extensions'],
				\ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
				\ 'F' : ['<Plug>(coc-format)'                  , 'format'],
				\ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
				\ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
				\ 'I' : [':CocList diagnostics'                , 'diagnostics'],
				\ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
				\ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
				\ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
				\ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
				\ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
				\ 'O' : [':CocList outline'                    , 'outline'],
				\ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
				\ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
				\ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
				\ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
				\ 'R' : ['<Plug>(coc-references)'              , 'references'],
				\ 's' : [':CocList -I symbols'                 , 'references'],
				\ 'S' : [':CocList snippets'                   , 'snippets'],
				\ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
				\ 'u' : [':CocListResume'                      , 'resume list'],
				\ 'U' : [':CocUpdate'                          , 'update CoC'],
				\ 'v' : [':Vista!!'                            , 'tag viewer'],
				\ 'z' : [':CocDisable'                         , 'disable CoC'],
				\ 'Z' : [':CocEnable'                          , 'enable CoC'],
				\ }

	" t is for terminal
	let g:which_key_map.t = {
				\ 'name' : '+terminal' ,
				\ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
				\ 'f' : [':FloatermNew fzf'                               , 'fzf'],
				\ 'g' : [':FloatermNew lazygit'                           , 'git'],
				\ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
				\ 'n' : [':FloatermNew node'                              , 'node'],
				\ 'N' : [':FloatermNew nnn'                               , 'nnn'],
				\ 'p' : [':FloatermNew python'                            , 'python'],
				\ 'r' : [':FloatermNew ranger'                            , 'ranger'],
				\ 't' : [':FloatermToggle'                                , 'toggle'],
				\ 'y' : [':FloatermNew ytop'                              , 'ytop'],
				\ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
				\ }

	let g:which_key_rsbgmap = {
      \ 'name' : '+RightSquarebrackets',
      \ 'a'    : 'ale nextwarp',
      \ 'c'    : 'coc nextdiagnostics',
      \ 'b'    : 'next buffer',
      \ 'g'    : 'coc gitnextchunk',
      \ ']'    : 'jump prefunction-golang',
      \ }


	let g:which_key_lsbgmap = {
      \ 'name' : '+LeftSquarebrackets',
      \ 'a'    : 'ale prewarp',
      \ 'c'    : 'coc prediagnostics',
      \ 'b'    : 'pre buffer',
      \ 'g'    : 'coc gitprevchunk',
      \ '['    : 'jump nextfunction-golang',
      \ }
