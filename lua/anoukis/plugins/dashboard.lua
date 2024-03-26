local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    DashboardHeader = { fg = _C.attribute },
    DashboardIcon = { link = "DashboardHeader" },
    DashboardDesc = { link = "DashboardHeader" },
    DashboardKey = { link = "DashboardHeader", style = _S.bold },
    DashboardFooter = { link = "DashboardHeader", style = _S.italic },
    DashboardShortcut = { link = "DashboardHeader" },
    DashboardCenter = { link = "DashboardHeader" },
    DashboardMruTitle = { link = "DashboardHeader" },
    DashboardProjectTitle = { link = "DashboardHeader" },
    DashboardFiles = { link = "DashboardHeader" },
  }

  return theme
end

return M
