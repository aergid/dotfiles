if (has('termguicolors'))
  set termguicolors
endif

set background=dark

" Set contrast
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_enable_italic = 0
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_diagnostic_line_highlight = 0

" Available values: `'grey background'`, `'bold'`, `'underline'`, `'italic'`
" Default value: `'grey background'` when not in transparent mode, `'bold'`
" when in transparent mode.
" let g:gruvbox_material_current_word = 'bold'

" Available values: `'default'`, `'original'`
" Default value: `'default'`
let g:gruvbox_material_statusline_style = 'default'

" `material`: Carefully designed to have a soft contrast.
" `mix`: Color palette obtained by calculating the mean of the other two.
" `original`: The color palette used in the original gruvbox.
" Use the color palette of the original gruvbox.
" let g:gruvbox_material_palette = 'mix'

            "\ 'red':              ['#f2594b',   '167'],
            "\ 'orange':           ['#f28534',   '208'],
            "\ 'yellow':           ['#e9b143',   '214'],
            "\ 'green':            ['#b0b846',   '142'],
" {{{

let g:gruvbox_material_palette = {
            \ 'bg0':              ['#282828',   '235'],
            \ 'bg1':              ['#32302f',   '236'],
            \ 'bg2':              ['#32302f',   '236'],
            \ 'bg3':              ['#45403d',   '237'],
            \ 'bg4':              ['#45403d',   '237'],
            \ 'bg5':              ['#5a524c',   '239'],
            \ 'bg_statusline1':   ['#32302f',   '236'],
            \ 'bg_statusline2':   ['#3a3735',   '236'],
            \ 'bg_statusline3':   ['#504945',   '240'],
            \ 'bg_diff_green':    ['#34381b',   '22'],
            \ 'bg_visual_green':  ['#3b4439',   '22'],
            \ 'bg_diff_red':      ['#402120',   '52'],
            \ 'bg_visual_red':    ['#4c3432',   '52'],
            \ 'bg_diff_blue':     ['#0e363e',   '17'],
            \ 'bg_visual_blue':   ['#374141',   '17'],
            \ 'bg_visual_yellow': ['#4f422e',   '94'],
            \ 'bg_current_word':  ['#3c3836',   '237'],
            \ 'fg0':              ['#e2cca9',   '223'],
            \ 'fg1':              ['#e2cca9',   '223'],
            \ 'red':              ['#f2594b',   '167'],
            \ 'orange':           ['#f28534',   '208'],
            \ 'yellow':           ['#e9b143',   '214'],
            \ 'green':            ['#b0b846',   '142'],
            \ 'aqua':             ['#8bba7f',   '108'],
            \ 'blue':             ['#80aa9e',   '109'],
            \ 'purple':           ['#d3869b',   '175'],
            \ 'bg_red':           ['#db4740',   '167'],
            \ 'bg_green':         ['#b0b846',   '142'],
            \ 'bg_yellow':        ['#e9b143',   '214'],
            \ 'grey0':            ['#7c6f64',   '243'],
            \ 'grey1':            ['#928374',   '245'],
            \ 'grey2':            ['#a89984',   '246'],
            \ 'none':             ['NONE',      'NONE']
            \ }
" }}}
