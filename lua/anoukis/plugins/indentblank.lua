-- local p = require("palette.colors")
local M = {}

function M.setup(_,_,p)
  local theme = {}

  theme.highlights = {
    IblIndent = { fg = p.purple100 },
  }
  return theme
end

return M

