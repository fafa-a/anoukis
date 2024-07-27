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
  bg = _COLOR_BACKGROUND == "dark" and _P.gray900 or _P[_VARIANT .. 25],
  bgFloat = _COLOR_BACKGROUND == "dark" and _P.gray900 or _P[_VARIANT .. 25],
  comment = _P.slate300,
  constant = _P.slate950,
  cursearch = {
    fg = _P[_VARIANT .. 25],
    bg = _P[_VARIANT .. 800],
  },
  -- cursor = _P[_VARIANT .. 500],
  cursor = _P.red500,
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
  fg = _COLOR_BACKGROUND == "dark" and _P.slate200 or _P.slate800,
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
  keyword = _COLOR_BACKGROUND == "dark" and _P.slate100 or _P.slate500,
  label = _COLOR_BACKGROUND == "dark" and _P.slate50 or _P.slate400,
  method = _COLOR_BACKGROUND == "dark" and _P.slate300 or _P.slate800,
  number = _COLOR_BACKGROUND == "dark" and _P.slate300 or _P.slate800,
  parameter = _COLOR_BACKGROUND == "dark" and _P.slate50 or _P.slate400,
  property = _COLOR_BACKGROUND == "dark" and _P.slate50 or _P.slate400,
  punctuation = _COLOR_BACKGROUND == "dark" and _P.slate200 or _P.slate700,
  search = {
    fg = _P[_VARIANT .. 25],
    bg = _P[_VARIANT .. 500],
  },
  string = _COLOR_BACKGROUND == "dark" and _P.slate300 or _P.slate800,
  tag = _COLOR_BACKGROUND == "dark" and _P.slate100 or _P.slate500,
  type = _COLOR_BACKGROUND == "dark" and _P.slate100 or _P.slate600,
  visual = {
    fg = _COLOR_BACKGROUND == "dark" and _P.slate100 or _P.slate800,
    bg = _P[_VARIANT .. 300],
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
