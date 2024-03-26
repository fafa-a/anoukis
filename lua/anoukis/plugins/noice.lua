local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    NoiceCmdline = { link = "Normal" },
    NoiceCmdlineIcon = { link = "NoiceCmdline" },
    NoiceCmdlineIconSearch = { fg = _C.constant },
    NoiceCmdlinePopupBorder = { link = "FloatBorder" },
    NoiceCmdlinePopupBorderSearch = { link = "FloatBorder" },
    NoiceCmdlinePopupTitle = { link = "FloatTitle" },
    NoiceConfirmBorder = { link = "FloatBorder" },
    NoiceFormatProgressDone = { fg = _C.bg, bg = _P.slate900 },
    NoiceFormatProgressTodo = { fg = _C.constant },
  }

  return theme
end

return M
