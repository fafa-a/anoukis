# Anoukis

Just a simple light monochrome colorscheme for neovim.  
Work in progress, so expect some changes.

Note: requires neovim >= 0.9.0

## Installation
[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "fafa-a/anoukis" }
```

[Packer](https://github.com/wbthomason/packer.nvim)

```lua
use "fafa-a/anoukis"
```

## Configuration

```lua
opts = {
      transparent_background = true, --disable background color
      variants = "", -- The variant option changes the color of the cursor, cursorline, illuminateword and the background.
        -- defaut "purple" , "gray" | "red" | "orange" | "yellow" | "green" | "cyan" | "blue" | "rose"
           styles = { -- styles for syntax highlight groups
        -- styles = { "italic", "bold", "underline" }
        -- for disable style use {""} or {"none"}
        comments = { "italic" },
        conditionals = {},
        functions = { "bold" },
        keywords = {},
        strings = { "italic" },
        variables = {},
        numbers = {},
        booleans = {},
        types =  {} ,
        operators = {},
      },
    },

```

You can use `opts' directly on the lazy.nvim configuration.

```lua
{
  "fafa-a/anoukis",
  opts = {
   -- your options here
  }
}
```


