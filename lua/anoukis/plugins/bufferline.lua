local c = require("palette.base").colors
local p = require("palette.colors")
local M = {}

function M.setup()
  local theme = {}

  local bg_highlight = p.purple200
  local active_bg = c.bg
  local inactive_bg = p.purple200

  local separator_fg = p.slate900

  theme = {
    -- buffers
    background = { fg = p.slate600, bg = inactive_bg },
    buffer_visible = { fg = p.slate600, bg = inactive_bg },
    buffer_selected = { fg = c.constant, bg = active_bg, bold = false, italic = false }, -- current
    -- Duplicate
    duplicate_selected = { fg = c.constant, bg = active_bg, bold = false, italic = false },
    duplicate_visible = { fg = p.slate300, bg = inactive_bg, bold = false, italic = false },
    duplicate = { fg = p.slate300, bg = inactive_bg, bold = false, italic = false },
    -- tabs
    tab = { fg = p.slate300, bg = inactive_bg },
    tab_selected = { fg = p.constant, bg = active_bg, bold = true },
    tab_separator = { fg = separator_fg, bg = inactive_bg },
    tab_separator_selected = { fg = separator_fg, bg = active_bg },

    tab_close = { fg = p.red500, bg = inactive_bg },
    indicator_selected = { fg = c.constant, bg = active_bg, bold = false, italic = false },
    -- separators
    separator = { fg = separator_fg, bg = inactive_bg },
    separator_visible = { fg = separator_fg, bg = inactive_bg },
    separator_selected = { fg = separator_fg, bg = active_bg },
    offset_separator = { fg = separator_fg, bg = active_bg },
    -- close buttons
    close_button = { fg = p.slate600, bg = inactive_bg },
    close_button_visible = { fg = p.slate600, bg = inactive_bg },
    close_button_selected = { fg = c.constant, bg = active_bg },
    -- Empty fill
    fill = { bg = bg_highlight },
    -- Numbers
    numbers = { fg = p.slate300, bg = inactive_bg },
    numbers_visible = { fg = p.slate300, bg = inactive_bg },
    numbers_selected = { fg = p.slate300, bg = active_bg, bold = false, italic = false },
    -- Errors
    error = { fg = c.error.fg, bg = inactive_bg },
    error_visible = { fg = c.error.fg, bg = inactive_bg },
    error_selected = { fg = c.error.fg, bg = active_bg, bold = false, italic = false },
    error_diagnostic = { fg = c.error.fg, bg = inactive_bg },
    error_diagnostic_visible = { fg = c.error.fg, bg = inactive_bg },
    error_diagnostic_selected = { fg = c.error.fg, bg = active_bg },
    -- Warnings
    warning = { fg = c.warning.fg, bg = inactive_bg },
    warning_visible = { fg = c.warning.fg, bg = inactive_bg },
    warning_selected = { fg = c.warning.fg, bg = active_bg, bold = false, italic = false },
    warning_diagnostic = { fg = c.warning.fg, bg = inactive_bg },
    warning_diagnostic_visible = { fg = c.warning.fg, bg = inactive_bg },
    warning_diagnostic_selected = { fg = c.warning.fg, bg = active_bg },
    -- Infos
    info = { fg = c.info.fg, bg = inactive_bg },
    info_visible = { fg = c.info.fg, bg = inactive_bg },
    info_selected = { fg = c.info.fg, bg = active_bg, bold = false, italic = false },
    info_diagnostic = { fg = c.info.fg, bg = inactive_bg },
    info_diagnostic_visible = { fg = c.info.fg, bg = inactive_bg },
    info_diagnostic_selected = { fg = c.info.fg, bg = active_bg },
    -- Hint
    hint = { fg = c.info.fg, bg = inactive_bg },
    hint_visible = { fg = c.info.fg, bg = inactive_bg },
    hint_selected = { fg = c.info.fg, bg = active_bg, bold = false, italic = false },
    hint_diagnostic = { fg = c.info.fg, bg = inactive_bg },
    hint_diagnostic_visible = { fg = c.info.fg, bg = inactive_bg },
    hint_diagnostic_selected = { fg = c.info.fg, bg = active_bg },
    -- Diagnostics
    diagnostic = { fg = p.slate300, bg = inactive_bg },
    diagnostic_visible = { fg = p.slate300, bg = inactive_bg },
    diagnostic_selected = { fg = p.slate300, bg = active_bg, bold = false, italic = false },
    -- Modified
    modified = { fg = p.rose500, bg = inactive_bg },
    modified_selected = { fg = p.rose500, bg = active_bg },
  }
  return theme
end

return M
