-- local c = require("palette.base").colors
-- local s = require("palette.base").style
local M = {}

function M.setup(c, s)
  local theme = {}

  theme.highlights = {
    DashboardHeader = { fg = c.attribute },
    DashboardIcon = { link = "DashboardHeader" },
    DashboardDesc = { link = "DashboardHeader" },
    DashboardKey = { link = "DashboardHeader", style = s.bold },
    DashboardFooter = { link = "DashboardHeader", style = s.italic },
    DashboardShortcut = { link = "DashboardHeader" },
    DashboardCenter = { link = "DashboardHeader" },
    DashboardMruTitle = { link = "DashboardHeader" },
    DashboardProjectTitle = { link = "DashboardHeader" },
    DashboardFiles = { link = "DashboardHeader" },
  }

  return theme
end

return M
