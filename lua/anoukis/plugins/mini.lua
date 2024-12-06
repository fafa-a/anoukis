local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    MiniStatuslineDevinfo = { fg = _C.fg, bg = _C.bg },
    MiniStatuslineFileinfo = { fg = _C.fg, bg = _C.bg },
    MiniStatuslineFilename = { fg = _C.bg, bg = _C.fg },
    MiniStatuslineInactive = { fg = _P.slate900, bg = _P.slate200 },
    MiniStatuslineModeCommand = { fg = _P.red900, bg = _P.red100, style = _S.bold },
    MiniStatuslineModeInsert = { fg = _P.green900, bg = _P.green100, style = _S.bold },
    MiniStatuslineModeNormal = { fg = _P.blue900, bg = _P.blue100, style = _S.bold },
    MiniStatuslineModeOther = { fg = _P.slate700, bg = _P.slate200, style = _S.bold },
    MiniStatuslineModeReplace = { fg = _P.red900, bg = _P.red100, style = _S.bold },
    MiniStatuslineModeVisual = { fg = _P.purple900, bg = _P.purple100, style = _S.bold },
  }

  return theme
end

return M
