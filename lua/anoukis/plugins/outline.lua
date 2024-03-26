local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    OutlineCurrent = { fg = _P.purple500, bg = _P.purple200 },
    OutlineGuides = { fg = _P.slate400 },
    OutlineFoldMarker = { fg = _C.constant, style = _S.bold },
    OutlineDetails = { fg = _P.slate500 },
  }

  return theme
end

return M
