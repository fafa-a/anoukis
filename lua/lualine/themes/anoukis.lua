-- stylua: ignore
local colors = {
  black        = '#282828',
  red          = '#FF5159',
  lightred     = '#FCE4E4',
  yellow       = '#fe8019',
  gray         = '#C8C1D1',
  darkgray     = '#4A4453',
  lightgray    = '#E8E4ED',
  lightpurple  = '#EEE6FF',
  purple       = '#D9C6FF',
}

local anoukis = {
  normal = {
    a = { bg = colors.gray, fg = colors.black, gui = "bold" },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.lightgray, fg = colors.darkgray },
  },
  insert = {

    a = { bg = colors.darkgray, fg = colors.lightgray, gui = "bold" },
    b = { bg = colors.gray, fg = colors.darkgray },
    c = { bg = colors.lightgray, fg = colors.darkgray },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.darkgray, gui = "bold" },
    b = { bg = colors.darkgray, fg = colors.purple },
    c = { bg = colors.lightgray, fg = colors.darkgray },
  },
  replace = {
    a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
    b = { bg = colors.lightgray, fg = colors.yellow },
    c = { bg = colors.lightgray, fg = colors.darkgray },
  },
  command = {
    a = { bg = colors.red, fg = colors.lightgray, gui = "bold" },
    b = { bg = colors.lightred, fg = colors.red },
    c = { bg = colors.lightgray, fg = colors.darkgray },
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.gray, gui = "bold" },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.lightgray, fg = colors.darkgray },
  },
}
return anoukis
