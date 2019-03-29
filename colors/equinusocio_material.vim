" author: ling(github.com/hyzeta)
" email of author: hyzeta@outlook.com
" license: apache-2.0

" vim color file
" equinusocio_material

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "equinusocio_material"

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && !has('nvim')
    finish
endif

if get(g:, 'equinusocio_material_style', 'default') == 'darker'
    let s:black_soft = '#545454'
    let s:background = '#212121'
    let s:cursor_guide = '#171717'
    let s:selection = '#353535'
else
    let s:black_soft = '#556e79'
    let s:background = '#263238'
    let s:cursor_guide = '#1b2327'
    let s:selection = '#33464a'
endif

let s:black = '#000000'
let s:red = '#ff5370'
let s:green = '#c3e88d'
let s:yellow = '#ffcb6b'
let s:orange = '#f78c6c'
let s:blue = '#82aaff'
let s:magenta = '#c792ea'
let s:cyan = '#89ddff'
let s:white = '#ffffff'
let s:foreground = '#eeffff'
let s:none = 'NONE'
let s:underline = 'underline'
let s:undercurl = 'undercurl'
let s:bold = 'bold'
let s:inverse = 'inverse'


function! s:HL(group, fg, bg, attr)
    execute 'hi ' . a:group . ' ctermfg=NONE'
    execute 'hi ' . a:group . ' ctermbg=NONE'
    execute 'hi ' . a:group . ' cterm=NONE'

    if !empty(a:fg)
        execute 'hi ' . a:group . ' guifg=' . a:fg
    else
        execute 'hi ' . a:group . ' guifg=NONE'
    endif

    if !empty(a:bg)
        execute 'hi ' . a:group . ' guibg=' . a:bg
    else
        execute 'hi ' . a:group . ' guibg=NONE'
    endif

    if !empty(a:attr)
        execute 'hi ' . a:group . ' gui=' . a:attr
    else
        execute 'hi ' . a:group . ' gui=NONE'
    endif
endfunction


" ====================================================
" editor color scheme
" ----------------------------------------------------
call s:HL('ColorColumn', s:none, s:cursor_guide, s:none)
call s:HL('Conceal', s:blue, s:none, s:none)
call s:HL('Cursor', s:background, s:foreground, s:none)
call s:HL('CursorIM', s:background, s:foreground, s:none)
call s:HL('CursorColumn', s:none, s:cursor_guide, s:none)
call s:HL('CursorLine', s:none, s:cursor_guide, s:none)
" ----------------------------------------------------
call s:HL('Directory', s:cyan, s:none, s:none)
" ----------------------------------------------------
call s:HL('DiffAdd', s:green, s:none, s:none)
call s:HL('DiffChange', s:yellow, s:none, s:none)
call s:HL('DiffDelete', s:red, s:none, s:none)
call s:HL('DiffText', s:magenta, s:none, s:none)
" ----------------------------------------------------
call s:HL('EndOfBuffer', s:background, s:none, s:none)
" ----------------------------------------------------
call s:HL('ErrorMsg', s:red, s:none, s:none)
" ----------------------------------------------------
call s:HL('VertSplit', s:background, s:none, s:none)
" ----------------------------------------------------
call s:HL('Folded', s:foreground, s:black_soft, s:none)
call s:HL('FoldColumn', s:foreground, s:none, s:none)
" ----------------------------------------------------
call s:HL('SignColumn', s:none, s:none, s:none)
call s:HL('IncSearch', s:black, s:red, s:none)
call s:HL('LineNr', s:black_soft, s:none, s:none)
call s:HL('CursorLineNr', s:foreground, s:none, s:none)
call s:HL('MatchParen', s:black, s:red, s:none)
" ----------------------------------------------------
call s:HL('ModeMsg', s:foreground, s:none, s:none)
call s:HL('MoreMsg', s:red, s:none, s:none)
call s:HL('NonText', s:black_soft, s:none, s:none)
call s:HL('Normal', s:foreground, s:background, s:none) " base color
" ----------------------------------------------------
call s:HL('Pmenu', s:foreground, s:black_soft, s:none)
call s:HL('PmenuSel', s:foreground, s:cursor_guide, s:none)
call s:HL('PmenuSbar', s:none, s:black_soft, s:none)
call s:HL('PmenuThumb', s:none, s:foreground, s:none)
" ----------------------------------------------------
call s:HL('Question', s:red, s:none, s:none)
call s:HL('QuickFixLine', s:foreground, s:background, s:none) " link it to normal
call s:HL('Search', s:black, s:red, s:none)
call s:HL('SpecialKey', s:black_soft, s:none, s:none)
" ----------------------------------------------------
call s:HL('SpellBad', s:black, s:green, s:none)
call s:HL('SpellCap', s:black, s:green, s:none)
call s:HL('SpellLocal', s:black, s:green, s:none)
call s:HL('SpellRare', s:black, s:green, s:none)
" ----------------------------------------------------
call s:HL('StatusLine', s:foreground, s:none, s:none)
call s:HL('StatusLineNC', s:black_soft, s:none, s:none)
call s:HL('StatusLineTerm', s:foreground, s:none, s:none)
call s:HL('StatusLineTermNC', s:black_soft, s:none, s:none)
" ----------------------------------------------------
call s:HL('TabLine', s:foreground, s:none, s:none)
call s:HL('TabLineFill', s:none, s:none, s:none)
call s:HL('TabLineSel', s:foreground, s:black_soft, s:none)
call s:HL('Terminal', s:foreground, s:background, s:none)
call s:HL('Title', s:red, s:none, s:none)
call s:HL('Visual', s:foreground, s:selection, s:none)
call s:HL('VisualNOS', s:foreground, s:selection, s:none)
call s:HL('WarningMsg', s:red, s:none, s:none)
call s:HL('WildMenu', s:black, s:cyan, s:none)
" ====================================================



" ====================================================
" standard syntax
" ----------------------------------------------------
call s:HL('Comment', s:black_soft, s:none, s:none)
" ----------------------------------------------------
call s:HL('Constant', s:orange, s:none, s:none)
call s:HL('String', s:green, s:none, s:none)
" ----------------------------------------------------
call s:HL('Identifier', s:blue, s:none, s:none)
" ----------------------------------------------------
call s:HL('Statement', s:cyan, s:none, s:none)
" ----------------------------------------------------
call s:HL('PreProc', s:cyan, s:none, s:none)
" ----------------------------------------------------
call s:HL('Type', s:magenta, s:none, s:none)
" ----------------------------------------------------
call s:HL('Special', s:orange, s:none, s:none)
" ----------------------------------------------------
call s:HL('Underlined', s:blue, s:none, s:none)
call s:HL('Ignore', s:none, s:none, s:none)
call s:HL('Error', s:red, s:none, s:none)
call s:HL('Todo', s:orange, s:none, s:none)
" ====================================================


" ====================================================
" vim8/neovim buildin terminal colors
" ----------------------------------------------------
if has('nvim')
    let g:terminal_color_0 = s:black
    let g:terminal_color_1 = s:red
    let g:terminal_color_2 = s:green
    let g:terminal_color_3 = s:yellow
    let g:terminal_color_4 = s:blue
    let g:terminal_color_5 = s:magenta
    let g:terminal_color_6 = s:cyan
    let g:terminal_color_7 = s:white
    let g:terminal_color_8 = s:black_soft
    let g:terminal_color_9 = s:red
    let g:terminal_color_10 = s:green
    let g:terminal_color_11 = s:yellow
    let g:terminal_color_12 = s:blue
    let g:terminal_color_13 = s:magenta
    let g:terminal_color_14 = s:cyan
    let g:terminal_color_15 = s:white
elseif exists('*term_setansicolors')
    let g:terminal_ansi_colors = [
        \ s:black,
        \ s:red,
        \ s:green,
        \ s:yellow,
        \ s:blue,
        \ s:magenta,
        \ s:cyan,
        \ s:white,
        \ s:black_soft,
        \ s:red,
        \ s:green,
        \ s:yellow,
        \ s:blue,
        \ s:magenta,
        \ s:cyan,
        \ s:white,
        \ ]
endif
" ====================================================
