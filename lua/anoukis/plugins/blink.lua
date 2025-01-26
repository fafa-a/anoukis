local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    BlinkCmpDoc = { fg = _C.fg, bg = _O.transparent_background and _S.none or _C.bg },
    BlinkCmpDocBorder = { fg = _C.fg, bg = _O.transparent_background and _S.none or _C.bg },
    BlinkCmpGhostText = { fg = _C.comment },
    BlinkCmpKindCodeium = { fg = _P[_VARIANT .. 500], bg = _S.none },
    BlinkCmpKindCopilot = { fg = _P[_VARIANT .. 500], bg = _S.none },
    BlinkCmpKindDefault = { fg = _C.error.fg, bg = _S.none },
    BlinkCmpKindSupermaven = { fg = _P[_VARIANT .. 500], bg = _S.none },
    BlinkCmpKindTabNine = { fg = _P[_VARIANT .. 500], bg = _S.none },
    BlinkCmpLabel = { fg = _C.fg, bg = _S.none },
    BlinkCmpLabelDeprecated = { fg = _P.red600, bg = _S.none, style = _S.strikethrough },
    BlinkCmpLabelMatch = { fg = _P[_VARIANT .. 600], bg = _S.none },
    BlinkCmpMenu = { fg = _C.fg, bg = _O.transparent_background and _S.none or _C.bg },
    BlinkCmpMenuBorder = { fg = _C.fg, bg = _O.transparent_background and _S.none or _C.bg },
    BlinkCmpSignatureHelp = { fg = _C.fg, bg = _C.info.bg },
    BlinkCmpSignatureHelpBorder = { fg = _C.fg, bg = _C.warning.bg },
    BlinkCmpLabelDetail = { fg = _C.comment, bg = _S.none },
    BlinkCmpLabelDescription = { link = "BlinkCmpLabelDetail" },
  }

  return theme
end

return M
