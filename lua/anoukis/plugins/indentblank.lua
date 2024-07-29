local M = {}
local variant = _O.variants

function M.setup()
  local theme = {}

  theme.highlights = {
    IblIndent = { fg = _P[_COLOR_BACKGROUND == 'light' and variant .. 100 or variant .. 900] },
  }
  return theme
end

return M

