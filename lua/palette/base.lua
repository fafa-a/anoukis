
local success, result = pcall(function()
  return require("anoukis.util").darken_color(_P[_VARIANT .. 25], 0.95)
end)

if not success then
  vim.notify = require("notify")
  vim.notify("An error occurred: " .. result, vim.log.levels.ERROR, { title = "Anoukis setup" })
end

local cursor_line_bg
if success then
  cursor_line_bg = result
end

local colors = {
  attribute = _P.slate400,
  bg = _VARIANT and _P[_VARIANT .. 25] or _P.purple25,
  bgFloat = _VARIANT and _P[_VARIANT .. 25] or _P.purple25,
  comment = _P.slate300,
  constant = _P.slate950,
  cursearch = {
    fg = _VARIANT and _P[_VARIANT .. 25] or _P.purple25,
    bg = _VARIANT and _P[_VARIANT .. 800] or _P.purple800,
  },
  cursor = _VARIANT and _P[_VARIANT .. 500] or _P.purple500,
  cursorLine = _VARIANT and cursor_line_bg or _P.purple75,
  diff = {
    add = _P.green500,
    change = _P.blue500,
    delete = _P.red500,
    text = _P.slate800,
  },
  error = {
    fg = _P.red500,
    bg = _P.red200,
  },
  fg = _P.slate800,
  git = {
    added = _P.green500,
    changed = _P.blue500,
    deleted = _P.red500,
  },
  gitSigns = {
    add = _P.green500,
    change = _P.blue500,
    delete = _P.red500,
  },
  health = {
    error = _P.red500,
    warning = _P.orange500,
    success = _P.green500,
  },
  info = {
    fg = _P.blue500,
    bg = _P.blue200,
  },
  keyword = _P.slate500,
  label = _P.slate400,
  method = _P.slate800,
  number = _P.slate800,
  parameter = _P.slate400,
  property = _P.slate400,
  punctuation = _P.slate700,
  search = {
    fg = _VARIANT and _P[_VARIANT .. 25] or _P.purple25,
    bg = _VARIANT and _P[_VARIANT .. 500] or _P.purple500,
  },
  string = _P.slate800,
  tag = _P.slate500,
  type = _P.slate600,
  visual = {
    fg = _P.slate800,
    bg = _VARIANT and _P[_VARIANT .. 300] or _P.purple300,
  },
  warning = {
    fg = _P.orange500,
    bg = _P.orange200,
  },
}

local style = {
  bold = "bold",
  underline = "underline",
  undercurl = "undercurl",
  underdouble = "underdouble",
  underdotted = "underdotted",
  underdashed = "underdashed",
  strikethrough = "strikethrough",
  reverse = "reverse",
  inverse = "inverse",
  italic = "italic",
  standout = "standout",
  altfont = "altfont",
  nocombine = "nocombine",
  none = "NONE",
}

return {
  colors = colors,
  style = style,
}
