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

local extra_color = {
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
  warning = {
    fg = _P.orange500,
    bg = _P.orange200,
  },
}

local light = {
  attribute = _P.slate400,
  bg = _P[_VARIANT .. 25],
  bgFloat = _P[_VARIANT .. 25],
  comment = _P.slate300,
  constant = _P.slate950,
  cursearch = {
    fg = _P[_VARIANT .. 25],
    bg = _P[_VARIANT .. 800],
  },
  cursor = {
    fg = _P[_VARIANT .. 950],
    bg = _P[_VARIANT .. 500],
  },
  cursorLine = cursor_line_bg,
  fg = _P.slate800,
  keyword = _P.slate500,
  label = _P.slate400,
  method = _P.slate800,
  number = _P.slate800,
  parameter = _P.slate500,
  property = _P.slate500,
  punctuation = _P.slate400,
  search = {
    fg = _P[_VARIANT .. 25],
    bg = _P[_VARIANT .. 500],
  },
  string = _P.slate800,
  tag = _P.slate500,
  type = _P.slate600,
  visual = {
    fg = _P.slate800,
    bg = _P[_VARIANT .. 300],
  },
  matchParen = {
    fg = _P[_VARIANT .. 800],
    bg = _P[_VARIANT .. 300],
  },
  floatBorder = _P.slate900,
  p = {
    menu = {
      fg = _P.slate800,
      bg = _P.gray100,
      blend = 0,
    },
    menuSel = {
      bg = _P[_VARIANT .. 300],
    },
    menuSbar = {
      bg = _P.gray400,
    },
    menuThumb = {
      bg = _P.gray950,
    },
  },
}

local dark = {
  attribute = _P.slate200,
  bg = _P[_VARIANT .. 950],
  bgFloat = _P[_VARIANT .. 950],
  comment = _P.slate500,
  constant = _P.white,
  cursearch = {
    fg = _P[_VARIANT .. 800],
    bg = _P[_VARIANT .. 25],
  },
  cursor = {
    fg = _P.slate950,
    bg = _P.yellow300,
  },
  cursorLine = _P[_VARIANT .. 900],
  fg = _P.white,
  keyword = _P.slate200,
  label = _P.slate100,
  method = _P.white,
  number = _P.slate200,
  parameter = _P.slate100,
  property = _P.slate100,
  punctuation = _P.slate400,
  search = {
    fg = _P[_VARIANT .. 500],
    bg = _P[_VARIANT .. 25],
  },
  string = _P.slate50,
  tag = _P.slate100,
  type = _P.slate100,
  visual = {
    fg = _P.slate800,
    bg = _P[_VARIANT .. 300],
  },
  matchParen = {
    fg = _P[_VARIANT .. 25],
    bg = _P[_VARIANT .. 800],
  },
  floatBorder = _P.slate800,
  p = {
    menu = {
      fg = _P.slate100,
      bg = _P[_VARIANT .. 950],
      blend = 0,
    },
    menuSel = {
      bg = _P[_VARIANT .. 700],
    },
    menuSbar = {
      bg = _P.gray300,
    },
    menuThumb = {
      bg = _P.gray500,
    },
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

local theme = _COLOR_BACKGROUND == "dark" and dark or light
local colors = vim.tbl_deep_extend("force", extra_color, theme)

return {
  colors = colors,
  style = style,
}
