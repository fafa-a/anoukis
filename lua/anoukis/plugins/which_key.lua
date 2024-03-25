-- local c = require("palette.base").colors
local M = {}

function M.setup(c)
  local theme = {}

  theme.highlights = {
    WhichKey = { link = "NormalFloat" },
    WhichKeyBorder = { link = "FloatBorder" },

    WhichKeyGroup = { fg = c.constant },
    WhichKeySeparator = { fg = c.constant },
    WhichKeyDesc = { fg = c.constant },
    WhichKeyValue = { fg = c.constant },
  }

  return theme
end

return M
