local M = {}

local default_options = {
  transparent_background = false,
  colors = {},
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
}
M.options = default_options

return M
