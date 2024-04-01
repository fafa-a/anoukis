local M = {}

local default_options = {
  transparent_background = false,
  variants = "purple",
  styles = {
    comments = { "italic" },
    conditionals = {},
    functions = { "bold" },
    keywords = {},
    strings = { "italic" },
    variables = {},
    numbers = {},
    booleans = {},
    types = {},
    operators = {},
  },
}
M.options = default_options

return M
