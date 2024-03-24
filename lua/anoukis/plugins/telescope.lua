local c = require("palette.base").colors
local s = require("palette.base").style
local p = require("palette.colors")
local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeMatching = { fg = p.purple600, style = s.bold },
    TelescopeSelection = { fg = c.constant, bg = p.purple300 },
    TelescopeSelectionCaret = { link = "TelescopeSelection", style = "bold" },
    TelescopeResultsTitle = { fg = c.constant, style = "bold" },
    TelescopePreviewTitle = { link = "TelescopeResultsTitle" },
    TelescopePromptTitle = { link = "TelescopeResultsTitle" },
  }

  return theme
end

return M
