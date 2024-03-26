local M = {}

function M.setup()
  local theme = {}

  -- FIXME: Dont work
  theme.highlights = {
    HarpoonWindow = { fg = _C.fg, bg = _C.error.bg },
    HarpoonBorder = { fg = _C.error.fg },
  }

  return theme
end

return M
