
let g:startify_custom_header = [
            \'  $$\            $$\  $$\                                              $$\\',
            \'  $$ |           $$ | $  |                                             $$ |',
            \'  $$ | $$$$$$\ $$$$$$\\_/ $$$$$$$\        $$$$$$\   $$$$$$\   $$$$$$$\ $$ |  $$\\',
            \'  $$ |$$  __$$\\_$$  _|  $$  _____|      $$  __$$\ $$  __$$\ $$  _____|$$ | $$  |',
            \'  $$ |$$$$$$$$ | $$ |    \$$$$$$\        $$ |  \__|$$ /  $$ |$$ /      $$$$$$  /',
            \'  $$ |$$   ____| $$ |$$\  \____$$\       $$ |      $$ |  $$ |$$ |      $$  _$$<',
            \'  $$ |\$$$$$$$\  \$$$$  |$$$$$$$  |      $$ |      \$$$$$$  |\$$$$$$$\ $$ | \$$\\',
            \'  \__| \_______|  \____/ \_______/       \__|       \______/  \_______|\__|  \__|',
        \]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]
          " \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 0

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Development',
            \ '~/YaD/Programming',
            \ ]

let g:startify_enable_special = 0
