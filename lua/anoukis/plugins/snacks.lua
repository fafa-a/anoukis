local M = {}

function M.setup()
  local theme = {}
  local bgColor = _C.bg
  local variant_100 = _P[_VARIANT .. 100]
  local variant_900 = _P[_VARIANT .. 900]

  theme.highlights = {
    SnacksIndent = { fg = variant_100, bg = bgColor },
    SnacksIndentScope = { fg = _P[_VARIANT .. 400], bg = _P[_VARIANT .. 50] },
    SnacksIndentChunk = { fg = variant_100 },
    SnacksIndentBlank = { fg = variant_100, bg = bgColor },

    SnacksDashboardHeader = { fg = _C.string },
    SnacksDashboardNormal = { link = "Normal" },
    SnacksDashboardDesc = { link = "SnacksDashboardHeader" },
    SnacksDashboardFile = { link = "SnacksDashboardHeader" },
    SnacksDashboardFooter = { link = "SnacksDashboardHeader", style = _S.italic },
    SnacksDashboardIcon = { fg = variant_900 },
    SnacksDashboardKey = { fg = variant_900 },
    SnacksDashboardTitle = { link = "SnacksDashboardHeader" },

    SnacksDashboardTerminal = { fg = variant_900 },
    SnacksDashboardDir = { fg = variant_900 },
    SnacksDashboardSpecial = { fg = _P[_VARIANT .. 700], bg = _P[_VARIANT .. 200] },
  }

  return theme
end

return M
