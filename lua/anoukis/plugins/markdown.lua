local c = require("palette.base").colors
local s = require("palette.base").style
local p = require("palette.colors")
local M = {}

function M.setup()
  local theme = {}

  --TODO i dont know if this works

  theme.highlights = {
    markdownHeadingDelimiter = { fg = p.purple900 , style = s.bold },
    markdownCode = { fg = p.purple800 },
    markdownCodeBlock = { fg = p.purple700 },
    markdownLinkText = { fg = p.purple600, style = s.italic },
    markdownH1 = { fg = p.purple900, style = s.bold },
    markdownH2 = { fg = p.purple800, style = s.bold },
    markdownH3 = { fg = p.purple700, style = s.bold },
    markdownH4 = { fg = p.purple600, style = s.bold },
    markdownH5 = { fg = p.purple500, style = s.bold },
    markdownH6 = { fg = p.purple400, style = s.bold },
  }

  return theme
end

return M
