local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    GitSignsAdd = { fg = _C.gitSigns.add },
    GitSignsAddNr = { link = "GitSignsAdd" },
    GitSignsAddLn = { link = "GitSignsAdd" },
    GitSignsChange = { fg = _C.gitSigns.change },
    GitSignsChangeNr = { link = "GitSignsChange" },
    GitSignsChangeLn = { link = "GitSignsChange" },
    GitSignsDelete = { fg = _C.gitSigns.delete },
    GitSignsDeleteNr = { link = "GitSignsDelete" },
    GitSignsDeleteLn = { link = "GitSignsDelete" },
    GitSignsCurrentLineBlame = { fg = _C.comment },
    GirSignsAddPreview = { link = "DiffAdd" },
    GitSignsDeletePreview = { link = "DiffDelete" },
  }

  return theme
end

return M
