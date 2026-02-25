local M = {}

local valid_variants = {
  purple = true,
  gray = true,
  red = true,
  orange = true,
  yellow = true,
  green = true,
  cyan = true,
  blue = true,
  rose = true,
}

local valid_backgrounds = {
  light = true,
  dark = true,
}

local default_options = {
  transparent_background = false,
  color_background = "light",
  diagnostic_background = false,
  variants = "purple",
  styles = {
    comments = { "italic" },
    conditionals = {},
    functions = { "bold" },
    keywords = {},
    strings = { "italic" },
    variables = { "bold" },
    numbers = {},
    booleans = {},
    types = { "bold" },
    operators = {},
  },
}

function M.validate(options)
  options = options or {}

  if options.variants and not valid_variants[options.variants] then
    vim.notify("[Anoukis] Invalid variant: " .. options.variants .. " (using default)", vim.log.levels.WARN)
    options.variants = default_options.variants
  end

  if options.color_background and not valid_backgrounds[options.color_background] then
    vim.notify("[Anoukis] Invalid color_background: " .. options.color_background .. " (using default)", vim.log.levels.WARN)
    options.color_background = default_options.color_background
  end

  return options
end

M.options = default_options

return M
