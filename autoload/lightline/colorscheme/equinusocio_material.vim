" SPDX-License-Identifier: BSD-3-Clause
"
" Copyright (c) 2019 Ling <hyzeta@outlook.com>.
" All rights reserved.
"
" Redistribution and use in source and binary forms, with or without
" modification, are permitted provided that the following conditions
" are met:
" 1. Redistributions of source code must retain the above copyright
"    notice, this list of conditions and the following disclaimer.
" 2. Redistributions in binary form must reproduce the above copyright
"    notice, this list of conditions and the following disclaimer in the
"    documentation and/or other materials provided with the distribution.
" 3. Neither the name of the copyright holder nor the names of its
"    contributors may be used to endorse or promote products derived
"    from this software without specific prior written permission.
"
" THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
" "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
" LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
" A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
" HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
" SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
" LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
" DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
" THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
" (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
" OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

if exists('g:lightline')

    if get(g:, 'equinusocio_material_style', 'default') == 'darker'
        let s:black_soft = '#545454'
        let s:background = '#212121'
        let s:cursor_guide = '#171717'
        let s:background_lighter = '#2f2f2f'
    else
        let s:black_soft = '#556e79'
        let s:background = '#263238'
        let s:cursor_guide = '#1b2327'
        let s:background_lighter = '#344046'
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

    let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

    let s:p.normal.left = [ [ s:black, s:cyan ], [ s:foreground, s:black_soft ] ]
    let s:p.normal.right = [ [ s:black, s:cyan ], [ s:foreground, s:black_soft ] ]
    let s:p.normal.middle = [ [ s:foreground, s:background_lighter ] ]
    let s:p.normal.error = [ [ s:foreground, s:red ] ]
    let s:p.normal.warning = [ [ s:foreground, s:orange ] ]

    let s:p.insert.left = [ [ s:black, s:green ], [ s:foreground, s:black_soft ] ]
    let s:p.insert.right = [ [ s:black, s:green ], [ s:foreground, s:black_soft ] ]

    let s:p.replace.left = [ [ s:black, s:red ], [ s:foreground, s:black_soft ] ]
    let s:p.replace.right = [ [ s:black, s:red ], [ s:foreground, s:black_soft ] ]

    let s:p.visual.left = [ [ s:black, s:yellow ], [ s:foreground, s:black_soft ] ]
    let s:p.visual.right = [ [ s:black, s:yellow ], [ s:foreground, s:black_soft ] ]

    let s:p.inactive.left =  [ [ s:foreground, s:black_soft ], [ s:foreground, s:black_soft ] ]
    let s:p.inactive.right = [ [ s:foreground, s:black_soft ], [ s:foreground, s:black_soft ] ]
    let s:p.inactive.middle = [ [ s:foreground, s:background_lighter ] ]

    let s:p.tabline.left = [ [ s:foreground, s:background_lighter ] ]
    let s:p.tabline.right = [ [ s:black, s:cyan ] ]
    let s:p.tabline.middle = [ [ s:foreground, s:background_lighter ] ]
    let s:p.tabline.tabsel = [ [ s:black, s:cyan ] ]

    let g:lightline#colorscheme#equinusocio_material#palette = lightline#colorscheme#fill(s:p)
endif
