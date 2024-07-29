local M = {}

function M.setup()
  local theme = {}
  local variant = _O.variants
  --TODO i dont know if this works
 local colors = {
    light = {
      headingDelimiter = _P[variant .. 900],
      code = _P[variant .. 800],
      codeBlock = _P[variant .. 700],
      linkText = _P[variant .. 600],
      h1 = _P[variant .. 900],
      h2 = _P[variant .. 800],
      h3 = _P[variant .. 700],
      h4 = _P[variant .. 600],
      h5 = _P[variant .. 500],
      h6 = _P[variant .. 400],
    },
    dark = {
      headingDelimiter = _P[variant .. 200],
      code = _P[variant .. 300],
      codeBlock = _P[variant .. 400],
      linkText = _P[variant .. 500],
      h1 = _P[variant .. 200],
      h2 = _P[variant .. 300],
      h3 = _P[variant .. 400],
      h4 = _P[variant .. 500],
      h5 = _P[variant .. 600],
      h6 = _P[variant .. 700],
    },
  }

  theme.highlights = {
    markdownHeadingDelimiter = { fg = colors[_COLOR_BACKGROUND].headingDelimiter, style = _S.bold },
    markdownCode = { fg = colors[_COLOR_BACKGROUND].code },
    markdownCodeBlock = { fg = colors[_COLOR_BACKGROUND].codeBlock },
    markdownLinkText = { fg = colors[_COLOR_BACKGROUND].linkText, style = _S.italic },
    markdownH1 = { fg = colors[_COLOR_BACKGROUND].h1, style = _S.bold },
    markdownH2 = { fg = colors[_COLOR_BACKGROUND].h2, style = _S.bold },
    markdownH3 = { fg = colors[_COLOR_BACKGROUND].h3, style = _S.bold },
    markdownH4 = { fg = colors[_COLOR_BACKGROUND].h4, style = _S.bold },
    markdownH5 = { fg = colors[_COLOR_BACKGROUND].h5, style = _S.bold },
    markdownH6 = { fg = colors[_COLOR_BACKGROUND].h6, style = _S.bold },
  }

  return theme
end

return M
