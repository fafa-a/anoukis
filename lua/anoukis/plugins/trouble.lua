local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    TroubleNormal = { link = "Normal" },
    TroubleCount = { fg = _C.warning.fg },
    TroubleText = { fg = _C.constant },
  }

  return theme
end

return M
