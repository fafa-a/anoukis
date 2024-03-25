-- local c = require("palette.base").colors
-- local s = require("palette.base").style
-- local p = require("palette.colors")
local M = {}

function M.setup(c, s, p)
  local theme = {}

  theme.highlights = {
    -- NotifyBackground = { bg = c.bgFloat },
    NotifyERRORBorder = { fg = c.error.bg },
    NotifyERRORIcon = { fg = c.error.fg },
    NotifyERRORTitle = { fg = c.error.fg, style = s.italic },
    NotifyWARNBorder = { fg = c.warning.bg },
    NotifyWARNIcon = { fg = c.warning.fg },
    NotifyWARNTitle = { fg = c.warning.fg, style = s.italic },
    NotifyINFOBorder = { fg = c.info.bg },
    NotifyINFOIcon = { fg = c.info.fg },
    NotifyINFOTitle = { fg = c.info.fg, style = s.italic },
    NotifyDEBUGBorder = { fg = p.rose200 },
    NotifyDEBUGIcon = { fg = p.rose500 },
    NotifyDEBUGTitle = { fg = p.rose500, style = s.italic },
    NotifyTRACEBorder = { fg = p.purple200 },
    NotifyTRACEIcon = { fg = p.purple500 },
    NotifyTRACETitle = { fg = p.purple500, style = s.italic },
  }

  return theme
end

return M
