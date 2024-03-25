-- local c = require("palette.base").colors
-- local s = require("palette.base").style
-- local p = require("palette.colors")
local M = {}

function M.setup(c, s, p)
  local theme = {}

  theme.highlights = {
    VimwikiHeader1 = { fg = c.constant, style = s.bold },
    VimwikiHeader2 = { link = "VimwikiHeader1" },
    VimwikiHeader3 = { link = "VimwikiHeader1" },
    vimwikiHeader4 = { link = "VimwikiHeader1" },
    VimwikiHeader5 = { link = "VimwikiHeader1" },
    VimwikiHeader6 = { link = "VimwikiHeader1" },
    VimwikiLink = { fg = p.slate500, style = s.underline },
    VimwikiHeaderChar = { link = "VimwikiHeader1" },
    VimwikiHR = { fg = c.constant },
    VimwikiList = { fg = c.constant },
    VimwikiTag = { fg = c.constant },
  }

  return theme
end

return M
