local M = {}
local variant = _O.variants

function M.setup()
  local theme = {}

  theme.highlights = {
    IblIndent = { fg = variant and _P[variant .. 100] or _P.purple100 },
  }
  return theme
end

return M

