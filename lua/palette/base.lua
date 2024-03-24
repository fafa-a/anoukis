local p = require("palette.colors")

local colors = {
  attribute = p.slate400,
  bg = p.purple50,
  bgFloat = p.purple200,
  comment = p.slate300,
  constant = p.slate950,
  cursor = p.purple500,
  cursorLine = p.purple100,
  diff = {
    add = p.green500,
    change = p.blue500,
    delete = p.red500,
    text = p.slate800,
  },
  error = {
    fg = p.red500,
    bg = p.red200,
  },
  fg = p.slate800,
  git = {
    added = p.green500,
    changed = p.blue500,
    deleted = p.red500,
  },
  gitSigns = {
    add = p.green700,
    change = p.blue700,
    delete = p.red700,
  },
  health = {
    error = p.red500,
    warning = p.orange500,
    success = p.green500,
  },
  info = {
    fg = p.blue500,
    bg = p.blue200,
  },
  keyword = p.slate500,
  label = p.slate400,
  method = p.slate800,
  none = "NONE",
  number = p.slate800,
  parameter = p.slate400,
  property = p.slate400,
  punctuation = p.slate400,
  string = p.slate800,
  tag = p.slate500,
  type = p.slate600,
  warning = {
    fg = p.orange500,
    bg = p.orange200,
  },
}

local style = {
  bold = "bold",
  italic = "italic",
  underline = "underline",
  undercurl = "undercurl",
  strikethrough = "strikethrough",
}

return {
  colors = colors,
  style = style,
}
