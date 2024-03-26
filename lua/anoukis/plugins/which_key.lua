local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    WhichKey = { link = "NormalFloat" },
    WhichKeyBorder = { link = "FloatBorder" },

    WhichKeyGroup = { fg = _C.constant },
    WhichKeySeparator = { fg = _C.constant },
    WhichKeyDesc = { fg = _C.constant },
    WhichKeyValue = { fg = _C.constant },
  }

  return theme
end

return M
