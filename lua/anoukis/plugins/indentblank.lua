local p = require("palette.colors")
local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    IblIndent = { fg = p.purple100 },
  }
  return theme
end

return M

