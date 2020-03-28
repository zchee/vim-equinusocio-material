# Equinusocio's material theme for vim

![license: MIT](https://img.shields.io/badge/license-MIT-A31F34)

This theme was ported from [equinusocio/vsc-material-theme](https://github.com/equinusocio/vsc-material-theme).

Try this theme if others don't meet your needs.

## Preview

### Darker

![](./screenshots/0.png)

### Default

![](./screenshots/1.png)

Note that syntax highlighting in screenshots was enhanced by [octol/vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight), you may like to install it manully.

## How to use

**IMPORTANT: True colors are required for vim in terminal**

* vim-plug

```vim
Plug 'chuling/vim-equinusocio-material'

" true colors are required for vim in terminal
set termguicolors
set background=dark

" if you prefer the default one, comment out this line
let g:equinusocio_material_darker = 1

" make vertsplit invisible
let g:equinusocio_material_hide_vertsplit = 1

colorscheme equinusocio_material

" this theme has a buildin lightline theme, you can turn it on
let g:lightline = {
  \ 'colorscheme': 'equinusocio_material',
  \ }
```

## Other

If you are using iterm, you might like to try this [chuling/iterm2-equinusocio-material](https://github.com/chuling/iterm2-equinusocio-material).

## License

[MIT License](LICENSE-MIT)
