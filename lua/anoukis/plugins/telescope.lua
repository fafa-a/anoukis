local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeMatching = { fg = _P.purple600, style = _S.bold },
    TelescopeSelection = { fg = _C.constant, bg = _P.purple300 },
    TelescopeSelectionCaret = { link = "TelescopeSelection", style = "bold" },
    TelescopeResultsTitle = { fg = _C.constant, style = "bold" },
    TelescopePreviewTitle = { link = "TelescopeResultsTitle" },
    TelescopePromptTitle = { link = "TelescopeResultsTitle" },
  }

  return theme
end

return M
