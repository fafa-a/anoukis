local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    -- NotifyBackground = { bg = c.bgFloat },
    NotifyERRORBorder = { fg = _C.error.bg },
    NotifyERRORIcon = { fg = _C.error.fg },
    NotifyERRORTitle = { fg = _C.error.fg },
    NotifyWARNBorder = { fg = _C.warning.bg },
    NotifyWARNIcon = { fg = _C.warning.fg },
    NotifyWARNTitle = { fg = _C.warning.fg },
    NotifyINFOBorder = { fg = _C.info.bg },
    NotifyINFOIcon = { fg = _C.info.fg },
    NotifyINFOTitle = { fg = _C.info.fg },
    NotifyDEBUGBorder = { fg = _P.rose200 },
    NotifyDEBUGIcon = { fg = _P.rose500 },
    NotifyDEBUGTitle = { fg = _P.rose500 },
    NotifyTRACEBorder = { fg = _P.purple200 },
    NotifyTRACEIcon = { fg = _P.purple500 },
    NotifyTRACETitle = { fg = _P.purple500 },
  }

  return theme
end

return M
