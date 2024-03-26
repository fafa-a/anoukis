local M = {}

function M.setup()
  local theme = {}
  theme.highlights = {
    TreesitterContext = { fg = _C.constant, style = _S.bold },
    -- TreesitterContextBottom = { link = "TreesitterContext" },
    TreesitterContextLineNumber = {link = "TreesitterContext"},
    -- TreesitterContextLineNumberBottom = { link = "TreesitterContext" },
  }
  return theme
end

return M
