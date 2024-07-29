local M = {}
local variant = _O.variants

function M.setup()
  local theme = {}

  theme.highlights = {
    OutlineCurrent = {
      fg = _P[variant .. 500],
      bg = _P[variant .. 200],
    },
    OutlineGuides = { fg = _P.slate400 },
    OutlineFoldMarker = { fg = _C.constant, style = _S.bold },
    OutlineDetails = { fg = _P.slate500 },
  }

  return theme
end

return M
