local M = {}
local variant = _O.variants

function M.setup()
  local theme = {}

  theme.highlights = {
    illuminatedWord = { bg = variant and _P[variant .. 200] or _P.purple200, style = _S.none }, -- used for highlighting the current word under the cursor
    illuminatedWordText = { link = "illuminatedWord" }, -- used for highlighting the fist declaration of the current word under the cursor
    illuminatedWordRead = { link = "illuminatedWord" }, -- used for highlighting all the references of the current word under the cursor
    illuminatedCurWord = { link = "illuminatedWord" }, -- used for highlighting the current word under the cursor
  }

  return theme
end

return M
