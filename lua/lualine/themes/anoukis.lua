local colors = {
  light = {
    normal = {
      a = { bg = _P.gray400, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.gray900, fg = _P.gray400 },
      c = { bg = _P.gray200, fg = _P.gray900 },
    },
    insert = {
      a = { bg = _P.gray900, fg = _P.gray200, gui = "bold" },
      b = { bg = _P.gray400, fg = _P.gray900 },
      c = { bg = _P.gray200, fg = _P.gray900 },
    },
    visual = {
      a = { bg = _P.purple500, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.gray900, fg = _P.purple500 },
      c = { bg = _P.gray200, fg = _P.gray900 },
    },
    replace = {
      a = { bg = _P.yellow500, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.gray200, fg = _P.yellow500 },
      c = { bg = _P.gray200, fg = _P.gray900 },
    },
    command = {
      a = { bg = _P.red500, fg = _P.gray100, gui = "bold" },
      b = { bg = _P.red200, fg = _P.red500 },
      c = { bg = _P.gray200, fg = _P.gray900 },
    },
    inactive = {
      a = { bg = _P.gray900, fg = _P.gray400, gui = "bold" },
      b = { bg = _P.gray900, fg = _P.gray200 },
      c = { bg = _P.gray200, fg = _P.gray900 },
    },
  },

  dark = {
    normal = {
      a = { bg = _P.gray900, fg = _P.gray400, gui = "bold" },
      b = { bg = _P.gray400, fg = _P.gray900 },
      c = { bg = _P.gray900, fg = _P.gray200 },
    },
    insert = {
      a = { bg = _P.gray100, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.gray900, fg = _P.gray200 },
      c = { bg = _P.gray900, fg = _P.gray100 },
    },
    visual = {
      a = { bg = _P.purple500, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.gray900, fg = _P.purple500 },
      c = { bg = _P.gray900, fg = _P.gray100 },
    },
    replace = {
      a = { bg = _P.yellow500, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.gray900, fg = _P.yellow500 },
      c = { bg = _P.gray900, fg = _P.gray900 },
    },
    command = {
      a = { bg = _P.red500, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.red200, fg = _P.red500 },
      c = { bg = _P.gray900, fg = _P.gray100 },
    },
    inactive = {
      a = { bg = _P.gray200, fg = _P.gray900, gui = "bold" },
      b = { bg = _P.gray200, fg = _P.gray900 },
      c = { bg = _P.gray900, fg = _P.gray100 },
    },
  }
}

local anoukis = {
  normal = {
    a = { bg = colors[_COLOR_BACKGROUND].normal.a.bg, fg = colors[_COLOR_BACKGROUND].normal.a.fg, gui = "bold" },
    b = { bg = colors[_COLOR_BACKGROUND].normal.b.bg, fg = colors[_COLOR_BACKGROUND].normal.b.fg },
    c = { bg = colors[_COLOR_BACKGROUND].normal.c.bg, fg = colors[_COLOR_BACKGROUND].normal.c.fg },
  },
  insert = {
    a = { bg = colors[_COLOR_BACKGROUND].insert.a.bg, fg = colors[_COLOR_BACKGROUND].insert.a.fg, gui = "bold" },
    b = { bg = colors[_COLOR_BACKGROUND].insert.b.bg, fg = colors[_COLOR_BACKGROUND].insert.b.fg },
    c = { bg = colors[_COLOR_BACKGROUND].insert.c.bg, fg = colors[_COLOR_BACKGROUND].insert.c.fg },
  },
  visual = {
    a = { bg = colors[_COLOR_BACKGROUND].visual.a.bg, fg = colors[_COLOR_BACKGROUND].visual.a.fg, gui = "bold" },
    b = { bg = colors[_COLOR_BACKGROUND].visual.b.bg, fg = colors[_COLOR_BACKGROUND].visual.b.fg },
    c = { bg = colors[_COLOR_BACKGROUND].visual.c.bg, fg = colors[_COLOR_BACKGROUND].visual.c.fg },
  },
  replace = {
    a = { bg = colors[_COLOR_BACKGROUND].replace.a.bg, fg = colors[_COLOR_BACKGROUND].replace.a.fg, gui = "bold" },
    b = { bg = colors[_COLOR_BACKGROUND].replace.b.bg, fg = colors[_COLOR_BACKGROUND].replace.b.fg },
    c = { bg = colors[_COLOR_BACKGROUND].replace.c.bg, fg = colors[_COLOR_BACKGROUND].replace.c.fg },
  },
  command = {
    a = { bg = colors[_COLOR_BACKGROUND].command.a.bg, fg = colors[_COLOR_BACKGROUND].command.a.fg, gui = "bold" },
    b = { bg = colors[_COLOR_BACKGROUND].command.b.bg, fg = colors[_COLOR_BACKGROUND].command.b.fg },
    c = { bg = colors[_COLOR_BACKGROUND].command.c.bg, fg = colors[_COLOR_BACKGROUND].command.c.fg },
  },
  inactive = {
    a = { bg = colors[_COLOR_BACKGROUND].inactive.a.bg, fg = colors[_COLOR_BACKGROUND].inactive.a.fg, gui = "bold" },
    b = { bg = colors[_COLOR_BACKGROUND].inactive.b.bg, fg = colors[_COLOR_BACKGROUND].inactive.b.fg },
    c = { bg = colors[_COLOR_BACKGROUND].inactive.c.bg, fg = colors[_COLOR_BACKGROUND].inactive.c.fg },
  },
}

return anoukis
