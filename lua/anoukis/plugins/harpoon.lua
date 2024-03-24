local c = require("palette.base").colors

local M = {}

function M.setup()
  local theme = {}

  -- FIXME: Dont work
  theme.highlights = {
    HarpoonWindow = { fg = c.fg, bg = c.error.bg },
    HarpoonBorder = { fg = c.error.fg },
  }

  return theme
end

return M
