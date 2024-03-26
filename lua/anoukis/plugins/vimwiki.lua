local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    VimwikiHeader1 = { fg = _C.constant, style = _S.bold },
    VimwikiHeader2 = { link = "VimwikiHeader1" },
    VimwikiHeader3 = { link = "VimwikiHeader1" },
    vimwikiHeader4 = { link = "VimwikiHeader1" },
    VimwikiHeader5 = { link = "VimwikiHeader1" },
    VimwikiHeader6 = { link = "VimwikiHeader1" },
    VimwikiLink = { fg = _P.slate500, style = _S.underline },
    VimwikiHeaderChar = { link = "VimwikiHeader1" },
    VimwikiHR = { fg = _C.constant },
    VimwikiList = { fg = _C.constant },
    VimwikiTag = { fg = _C.constant },
  }

  return theme
end

return M
