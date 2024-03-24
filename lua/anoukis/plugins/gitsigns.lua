local c = require("palette.base").colors

local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    GitSignsAdd = { fg = c.gitSigns.add },
    GitSignsAddNr = { link = "GitSignsAdd" },
    GitSignsAddLn = { link = "GitSignsAdd" },
    GitSignsChange = { fg = c.gitSigns.change },
    GitSignsChangeNr = { link = "GitSignsChange" },
    GitSignsChangeLn = { link = "GitSignsChange" },
    GitSignsDelete = { fg = c.gitSigns.delete },
    GitSignsDeleteNr = { link = "GitSignsDelete" },
    GitSignsDeleteLn = { link = "GitSignsDelete" },
    GitSignsCurrentLineBlame = { fg = c.comment },
    GirSignsAddPreview = { link = "DiffAdd" },
    GitSignsDeletePreview = { link = "DiffDelete" },
  }

  return theme
end

return M
