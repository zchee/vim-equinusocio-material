# equinusocio's material theme for vim

[![License: Mozilla Public License 2.0](https://img.shields.io/static/v1.svg?label=License&message=Mozilla%20Public%20License%202.0&logoColor=ffffff&labelColor=565b60&color=e72565&style=flat&logo=read-the-docs)](https://spdx.org/licenses/MPL-2.0.html)
[![Link: 996.ICU](https://img.shields.io/static/v1.svg?label=Link&message=996%2EICU&logoColor=ffffff&labelColor=565b60&color=e72565&style=flat&logo=read-the-docs)](https://996.icu/#/en_US)

[![Developer: Ling (github.com/hyzeta)](https://img.shields.io/static/v1.svg?label=Developer&message=Ling%20%28github.com/hyzeta%29&logoColor=ffffff&labelColor=565b60&color=d242c1&style=flat&logo=github)](https://github.com/hyzeta)
[![Email: hyzeta@outlook.com](https://img.shields.io/static/v1.svg?label=Email&message=hyzeta%40outlook.com&logoColor=ffffff&labelColor=565b60&color=d242c1&style=flat&logo=gmail)](mailto:hyzeta@outlook.com)

This theme was ported from [equinusocio/vsc-material-theme](https://github.com/equinusocio/vsc-material-theme), which was licensed under apache-2.0.

Try this theme if others don't meet your needs.

## screenshots

### darker

![](./screenshots/1.png)

### default

![](./screenshots/2.png)

## how to use

**IMPORTANT: True colors are required for vim in terminal**

* vim-plug

```vim
Plug 'Hyzeta/vim_equinusocio_material'

" true colors are required for vim in terminal
set termguicolors

" if you prefer the default one, comment out this line
let g:equinusocio_material_style='darker'

colorscheme equinusocio_material

" this theme has a buildin lightline theme, you can turn it on
let g:lightline = {
    \ 'colorscheme': 'equinusocio_material',
    \ }
```
