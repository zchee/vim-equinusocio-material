# equinusocio's material theme for vim

[![SPDX-License-Identifier: Apache-2.0](https://img.shields.io/static/v1.svg?label=SPDX-License-Identifier&message=Apache-2.0&logoColor=ffffff&labelColor=565b60&color=e72565&style=flat&logo=spdx)](https://spdx.org/licenses/Apache-2.0.html)

[![Developer: Ling (github.com/hyzeta)](https://img.shields.io/static/v1.svg?label=Developer&message=Ling%20%28github.com/hyzeta%29&logoColor=ffffff&labelColor=565b60&color=d242c1&style=flat&logo=github)](https://github.com/hyzeta)
[![Email: hyzeta@outlook.com](https://img.shields.io/static/v1.svg?label=Email&message=hyzeta%40outlook.com&logoColor=ffffff&labelColor=565b60&color=d242c1&style=flat&logo=gmail)](mailto:hyzeta@outlook.com)

This theme was ported from [equinusocio/vsc-material-theme](https://github.com/equinusocio/vsc-material-theme).

Try this theme if others don't meet your needs.

## screenshots

### default

![](./screenshots/0.png)

### darker

![](./screenshots/1.png)

## how to use

**IMPORTANT: True colors are required for vim in terminal**

* vim-plug

```vim
Plug 'Hyzeta/vim_equinusocio_material'

" true colors are required for vim in terminal
set termguicolors

" if you prefer the default one, comment out this line
let g:equinusocio_material_style='darker'

" comment out this line to make vertsplit invisible
let g:equinusocio_material_vertsplit='visible'

colorscheme equinusocio_material

" this theme has a buildin lightline theme, you can turn it on
let g:lightline = {
    \ 'colorscheme': 'equinusocio_material',
    \ }
```

## Other

If you are using iterm, you can try this [Hyzeta/iterm2-equinusocio-material](https://github.com/Hyzeta/iterm2-equinusocio-material).
