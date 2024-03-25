-- local c = require("palette.base").colors
local M = {}

function M.setup(c)
  local theme = {}

  theme.highlights = {
    TroubleNormal = { link = "Normal" },
    TroubleCount = { fg = c.warning.fg },
    TroubleText = { fg = c.constant },
  }

  return theme
end

return M
