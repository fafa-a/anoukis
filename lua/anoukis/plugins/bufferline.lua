local M = {}
local variant = _O.variants

function M.setup()
  local theme = {}

  local active_bg = _O.transparent_background and _S.none or _C.bg
  local inactive_bg =_COLOR_BACKGROUND == 'light' and _P.gray300 or _P.gray700
  local separator_fg = _COLOR_BACKGROUND == 'light' and _P.gray900 or _P.gray300

  theme = {
    -- buffers
    background = { fg =_COLOR_BACKGROUND == 'light' and _P.gray600 or _P.gray300, bg = inactive_bg },
    buffer_visible = { fg =_COLOR_BACKGROUND == 'light' and _P.gray600 or _P.gray300, bg = inactive_bg },
    buffer_selected = { fg = _C.constant, bg = active_bg, bold = false, italic = false }, -- current
    -- Duplicate
    duplicate_selected = { fg = _C.constant, bg = active_bg, bold = false, italic = false },
    duplicate_visible = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = inactive_bg, bold = false, italic = false },
    duplicate = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = inactive_bg, bold = false, italic = false },
    -- tabs
    tab = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = inactive_bg },
    tab_selected = { fg = _P.constant, bg = active_bg, bold = true },
    tab_separator = { fg = separator_fg, bg = inactive_bg },
    tab_separator_selected = { fg = separator_fg, bg = active_bg },

    tab_close = { fg = _P.red500, bg = inactive_bg },
    indicator_selected = { fg = _C.constant, bg = active_bg, bold = false, italic = false },
    -- separators
    separator = { fg = separator_fg, bg = inactive_bg },
    separator_visible = { fg = separator_fg, bg = inactive_bg },
    separator_selected = { fg = separator_fg, bg = active_bg },
    offset_separator = { fg = separator_fg, bg = active_bg },
    -- close buttons
    close_button = { fg = _COLOR_BACKGROUND == 'light' and _P.gray600 or _P.gray200, bg = inactive_bg },
    close_button_visible = { fg = _COLOR_BACKGROUND == 'light' and _P.gray600 or _P.gray200, bg = inactive_bg },
    close_button_selected = { fg = _C.constant, bg = active_bg },
    -- Empty fill
    fill = { bg = _COLOR_BACKGROUND == 'light' and _P.gray400 or _P.gray800 },
    -- Numbers
    numbers = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = inactive_bg },
    numbers_visible = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = inactive_bg },
    numbers_selected = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = active_bg, bold = false, italic = false },
    -- Errors
    error = { fg = _C.error.fg, bg = inactive_bg },
    error_visible = { fg = _C.error.fg, bg = inactive_bg },
    error_selected = { fg = _C.error.fg, bg = active_bg, bold = false, italic = false },
    error_diagnostic = { fg = _C.error.fg, bg = inactive_bg },
    error_diagnostic_visible = { fg = _C.error.fg, bg = inactive_bg },
    error_diagnostic_selected = { fg = _C.error.fg, bg = active_bg },
    -- Warnings
    warning = { fg = _C.warning.fg, bg = inactive_bg },
    warning_visible = { fg = _C.warning.fg, bg = inactive_bg },
    warning_selected = { fg = _C.warning.fg, bg = active_bg, bold = false, italic = false },
    warning_diagnostic = { fg = _C.warning.fg, bg = inactive_bg },
    warning_diagnostic_visible = { fg = _C.warning.fg, bg = inactive_bg },
    warning_diagnostic_selected = { fg = _C.warning.fg, bg = active_bg },
    -- Infos
    info = { fg = _C.info.fg, bg = inactive_bg },
    info_visible = { fg = _C.info.fg, bg = inactive_bg },
    info_selected = { fg = _C.info.fg, bg = active_bg, bold = false, italic = false },
    info_diagnostic = { fg = _C.info.fg, bg = inactive_bg },
    info_diagnostic_visible = { fg = _C.info.fg, bg = inactive_bg },
    info_diagnostic_selected = { fg = _C.info.fg, bg = active_bg },
    -- Hint
    hint = { fg = _C.info.fg, bg = inactive_bg },
    hint_visible = { fg = _C.info.fg, bg = inactive_bg },
    hint_selected = { fg = _C.info.fg, bg = active_bg, bold = false, italic = false },
    hint_diagnostic = { fg = _C.info.fg, bg = inactive_bg },
    hint_diagnostic_visible = { fg = _C.info.fg, bg = inactive_bg },
    hint_diagnostic_selected = { fg = _C.info.fg, bg = active_bg },
    -- Diagnostics
    diagnostic = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = inactive_bg },
    diagnostic_visible = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = inactive_bg },
    diagnostic_selected = { fg = _P[_COLOR_BACKGROUND == 'light' and variant ..300 or variant ..100], bg = active_bg, bold = false, italic = false },
    -- Modified
    modified = { fg = _P.rose500, bg = inactive_bg },
    modified_selected = { fg = _P.rose500, bg = active_bg },
  }
  return theme
end

return M
