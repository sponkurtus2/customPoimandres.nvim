# What is this?
This is the same poimandres, but when I installed it, i did noticed that in Golang, the name of the functions were blue, while in the picture of the theme, they were green, so I just changed that color.

## 📦 Installation

_**IMPORTANT!** The `setup` function has to be invoked before the colorscheme is set!_

Install with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
-- Lua

{ 
  'sponkurtus2/poimandres.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('poimandres').setup {
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
    }
  end,

  -- optionally set the colorscheme within lazy config
  init = function()
    vim.cmd("colorscheme poimandres")
  end
}
```

## Contributions

Feel free to help improving the color scheme by opening issues and PRs with features, fixes or changes.

## 🙌 Related

- [poimandres-theme](https://github.com/drcmda/poimandres-theme): VSCode version
- [poimandres-alacritty](https://github.com/z0al/poimandres-alacritty): Alacritty version
- [poimandres-iterm](https://github.com/alii/poimandres-iterm): Iterm version
