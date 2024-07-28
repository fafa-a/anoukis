local M = {}

local default_options = {
  transparent_background = false,
  color_background = "light", --light , dark
  diagnostic_background = false,
  variants = "purple",
  styles = {
    comments = { "italic" },
    conditionals = {},
    functions = { "bold" },
    keywords = {},
    strings = { "italic" },
    variables = {"bold"},
    numbers = {},
    booleans = {},
    types = { "bold" },
    operators = {},
  },
}
M.options = default_options

return M
