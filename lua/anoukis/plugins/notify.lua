local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    -- NotifyBackground = { bg = c.bgFloat },
    NotifyERRORBorder = { fg = _C.error.bg },
    NotifyERRORIcon = { fg = _C.error.fg },
    NotifyERRORTitle = { fg = _C.error.fg, style = _S.italic },
    NotifyWARNBorder = { fg = _C.warning.bg },
    NotifyWARNIcon = { fg = _C.warning.fg },
    NotifyWARNTitle = { fg = _C.warning.fg, style = _S.italic },
    NotifyINFOBorder = { fg = _C.info.bg },
    NotifyINFOIcon = { fg = _C.info.fg },
    NotifyINFOTitle = { fg = _C.info.fg, style = _S.italic },
    NotifyDEBUGBorder = { fg = _P.rose200 },
    NotifyDEBUGIcon = { fg = _P.rose500 },
    NotifyDEBUGTitle = { fg = _P.rose500, style = _S.italic },
    NotifyTRACEBorder = { fg = _P.purple200 },
    NotifyTRACEIcon = { fg = _P.purple500 },
    NotifyTRACETitle = { fg = _P.purple500, style = _S.italic },
  }

  return theme
end

return M
