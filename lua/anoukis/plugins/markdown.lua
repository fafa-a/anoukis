local M = {}

function M.setup()
  local theme = {}

  --TODO i dont know if this works

  theme.highlights = {
    markdownHeadingDelimiter = { fg = _P.purple900 , style = _S.bold },
    markdownCode = { fg = _P.purple800 },
    markdownCodeBlock = { fg = _P.purple700 },
    markdownLinkText = { fg = _P.purple600, style = _S.italic },
    markdownH1 = { fg = _P.purple900, style = _S.bold },
    markdownH2 = { fg = _P.purple800, style = _S.bold },
    markdownH3 = { fg = _P.purple700, style = _S.bold },
    markdownH4 = { fg = _P.purple600, style = _S.bold },
    markdownH5 = { fg = _P.purple500, style = _S.bold },
    markdownH6 = { fg = _P.purple400, style = _S.bold },
  }

  return theme
end

return M
