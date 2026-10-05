# monoknight.nvim

A sleek, pastel-infused dark and light colorscheme for Neovim, designed for modern development, high contrast readability, and a calm, aesthetic visual experience.

> [!NOTE]
> **monoknight.nvim** is built using [**tokyonight.nvim**](https://github.com/folke/tokyonight.nvim) by [@folke](https://github.com/folke) as its base and architectural foundation.

---

## ✨ Features

- **Curated Palette**: Built on a unified 55-color pastel and monochrome palette defined in [`palette.lua`](lua/monoknight/colors/palette.lua) as the single source of truth.
- **Multiple Styles**:
  - `storm`: Balanced dark theme (`#111111` background).
  - `night`: Deepest, pure black contrast (`#000000` background).
  - `moon`: Soft charcoal variant (`#1c1c1c` background).
  - `day`: Clean, light mode variant for bright environments.
- **Comprehensive Plugin Support**: Built-in highlight groups for Treesitter, LSP, Blink.cmp, nvim-cmp, Telescope, Snacks, Neo-tree, Mini.nvim, Trouble, Which-key, Gitsigns, and many more.
- **Statusline Integrations**: Out-of-the-box themes for **lualine**, **lightline**, and **barbecue**.

---

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Adnan-Malik-26/monoknight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm", -- "storm", "night", "moon", or "day"
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      sidebars = "dark", -- "dark", "transparent", or "normal"
      floats = "dark",   -- "dark", "transparent", or "normal"
    },
  },
  config = function(_, opts)
    require("monoknight").setup(opts)
    vim.cmd.colorscheme("monoknight")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "Adnan-Malik-26/monoknight.nvim",
  config = function()
    require("monoknight").setup({ style = "storm" })
    vim.cmd.colorscheme("monoknight")
  end,
})
```

---

## 🚀 Usage

Switch to any style directly via Vim commands:

```vim
" Default (configured style)
colorscheme monoknight

" Specific style variants
colorscheme monoknight-storm
colorscheme monoknight-night
colorscheme monoknight-moon
colorscheme monoknight-day
```

Or in Lua:

```lua
vim.cmd.colorscheme("monoknight")
```

---

## ⚙️ Configuration

Default settings:

```lua
require("monoknight").setup({
  style = "moon", -- The theme comes in: "storm", "night", "moon", and "day"
  light_style = "day", -- Theme style when vim.o.background is set to "light"
  transparent = false, -- Disable setting background color
  terminal_colors = true, -- Configure Neovim :terminal colors
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark", -- "dark", "transparent", or "normal"
    floats = "dark",   -- "dark", "transparent", or "normal"
  },
  dim_inactive = false, -- Dim inactive windows
  lualine_bold = false, -- Bold section headers in lualine

  --- Override specific color groups:
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- Override specific highlight groups:
  ---@param highlights monoknight.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
```

---

## 🎨 Integrations

### [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

```lua
require("lualine").setup({
  options = {
    theme = "monoknight", -- or "monoknight-storm", "monoknight-night", etc.
  },
})
```

### [barbecue.nvim](https://github.com/utilyre/barbecue.nvim)

```lua
require("barbecue").setup({
  theme = "monoknight",
})
```

---

## 🖤 Palette

All colors are systematically defined in [`lua/monoknight/colors/palette.lua`](lua/monoknight/colors/palette.lua). You can import and use the raw palette in your personal configuration:

```lua
local palette = require("monoknight.colors.palette")
print(palette.coral)       -- #e7b8aa
print(palette.lavender)    -- #ddd0ea
print(palette.sage)        -- #b8ceb8
print(palette.true_black)  -- #000000
```

---

## 👏 Acknowledgements

Special thanks to **[folke](https://github.com/folke)** for creating **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**, which served as the codebase foundation and architectural template for this project.

---

## 📄 License

Apache-2.0
