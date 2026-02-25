local M = {}
local variant = _O.variants
function M.setup()
  local theme = {}
  local colors = {
    light = {
      match = {fg = _P[variant .. 300], bg = _P[variant .. 700]},
      selection = _P[variant .. 300],
    },
    dark = {
      match = {fg = _P[variant .. 700], bg = _P[variant .. 300]},
      selection = _P[variant .. 700],
    },
  }

  theme.highlights = {
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeMatching = { fg = colors[_COLOR_BACKGROUND].match.fg, bg = colors[_COLOR_BACKGROUND].match.bg, style = _S.bold },
    TelescopeSelection = { fg = _C.constant, bg = colors[_COLOR_BACKGROUND].selection },
    TelescopeSelectionCaret = { link = "TelescopeSelection", style = _S.bold },
    TelescopeResultsTitle = { fg = _C.constant, style = _S.bold },
    TelescopePreviewTitle = { link = "TelescopeResultsTitle" },
    TelescopePromptTitle = { link = "TelescopeResultsTitle" },
  }

  return theme
end

return M
