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
let g:gruvbox_material_palette = 'mix'

    " If you prefer a darker background, for example: '#101010'.
    " See `autoload/gruvbox_material.vim` for the definition of all built-in palettes.
    " {{{
    " let g:gruvbox_material_palette = {
    "      \ 'bg0':              ['#101010',   '234'],
    "      \ 'bg1':              ['#262727',   '235'],
    "      \ 'bg2':              ['#282828',   '235'],
    "      \ 'bg3':              ['#3c3836',   '237'],
    "      \ 'bg4':              ['#3c3836',   '237'],
    "      \ 'bg5':              ['#504945',   '239'],
    "      \ 'bg_statusline1':   ['#282828',   '235'],
    "      \ 'bg_statusline2':   ['#32302f',   '235'],
    "      \ 'bg_statusline3':   ['#504945',   '239'],
    "      \ 'bg_diff_green':    ['#32361a',   '22'],
    "      \ 'bg_visual_green':  ['#333e34',   '22'],
    "      \ 'bg_diff_red':      ['#3c1f1e',   '52'],
    "      \ 'bg_visual_red':    ['#442e2d',   '52'],
    "      \ 'bg_diff_blue':     ['#0d3138',   '17'],
    "      \ 'bg_visual_blue':   ['#2e3b3b',   '17'],
    "      \ 'bg_visual_yellow': ['#473c29',   '94'],
    "      \ 'bg_current_word':  ['#32302f',   '236'],
    "      \ 'fg0':              ['#d4be98',   '223'],
    "      \ 'fg1':              ['#ddc7a1',   '223'],
    "      \ 'red':              ['#ea6962',   '167'],
    "      \ 'orange':           ['#e78a4e',   '208'],
    "      \ 'yellow':           ['#d8a657',   '214'],
    "      \ 'green':            ['#a9b665',   '142'],
    "      \ 'aqua':             ['#89b482',   '108'],
    "      \ 'blue':             ['#7daea3',   '109'],
    "      \ 'purple':           ['#d3869b',   '175'],
    "      \ 'bg_red':           ['#ea6962',   '167'],
    "      \ 'bg_green':         ['#a9b665',   '142'],
    "      \ 'bg_yellow':        ['#d8a657',   '214'],
    "      \ 'grey0':            ['#7c6f64',   '243'],
    "      \ 'grey1':            ['#928374',   '245'],
    "      \ 'grey2':            ['#a89984',   '246'],
    "      \ 'none':             ['NONE',      'NONE']
    "      \ }
    " }}}

    " Colors based on https://github.com/soft-aesthetic/soft-era
    " There are some problems in the original one but I'm too lazy to maintain a fork.
    " However, I successfully obtained a palette based on soft-era, and I'd like to share it here.
    " Preview: https://user-images.githubusercontent.com/37491630/82816097-0c76a900-9e8a-11ea-9d99-73573b0f0afb.png
    " {{{
    " let g:gruvbox_material_palette = {
    "      \ 'bg0':              ['#f9f5f5',   '229'],
    "      \ 'bg1':              ['#f4f0f0',   '228'],
    "      \ 'bg2':              ['#f4f0f0',   '228'],
    "      \ 'bg3':              ['#f2edec',   '223'],
    "      \ 'bg4':              ['#efeae9',   '223'],
    "      \ 'bg5':              ['#ebe6e4',   '250'],
    "      \ 'bg_statusline1':   ['#f4f0f0',   '223'],
    "      \ 'bg_statusline2':   ['#f4f0f0',   '223'],
    "      \ 'bg_statusline3':   ['#ebe6e4',   '250'],
    "      \ 'bg_diff_green':    ['#eaf3ce',   '194'],
    "      \ 'bg_visual_green':  ['#eaf3ce',   '194'],
    "      \ 'bg_diff_red':      ['#fae1d7',   '217'],
    "      \ 'bg_visual_red':    ['#fae1d7',   '217'],
    "      \ 'bg_diff_blue':     ['#e0f0f3',   '117'],
    "      \ 'bg_visual_blue':   ['#e0f0f3',   '117'],
    "      \ 'bg_visual_yellow': ['#f6ead0',   '226'],
    "      \ 'bg_current_word':  ['#efeae9',   '228'],
    "      \ 'fg0':              ['#be9898',   '237'],
    "      \ 'fg1':              ['#be9898',   '237'],
    "      \ 'red':              ['#f165bd',   '88'],
    "      \ 'orange':           ['#f165bd',   '130'],
    "      \ 'yellow':           ['#ec9157',   '136'],
    "      \ 'green':            ['#96ad01',   '100'],
    "      \ 'aqua':             ['#25b7b8',   '165'],
    "      \ 'blue':             ['#75a9d9',   '24'],
    "      \ 'purple':           ['#aea6e1',   '96'],
    "      \ 'bg_red':           ['#f165bd',   '88'],
    "      \ 'bg_green':         ['#96ad01',   '100'],
    "      \ 'bg_yellow':        ['#ec9157',   '130'],
    "      \ 'grey0':            ['#e3cbcb',   '246'],
    "      \ 'grey1':            ['#dfc5c5',   '245'],
    "      \ 'grey2':            ['#dabfbf',   '243'],
    "      \ 'none':             ['NONE',      'NONE']
    "      \ }
    " }}}

