local c = require("palette.base").colors
local s = require("palette.base").style
local M = {}

function M.setup()
  local theme = {}
  -- example
  --  Example = { fg = c.fg, bg = c.bg, style = {s.bold, s.italic} },
  theme.highlights = {
    BufferLineFill = { link = "Normal" },
    BufferLineBackground = { fg = c.bg, bg = c.comment },
    BufferLineBufferSelected = { fg = c.label, bg = c.bg, style = { s.bold, s.italic } },
    BufferLineIndicatorSelected = { link = "BufferLineBufferSelected" },

    BufferLineSeparator = { fg = c.tag, bg = c.comment },
    BufferLineOffsetSeparator = { link = "Debug" },

    BufferLineCloseButton = { fg = c.bg, bg = c.comment },
    BufferLineCloseButtonVisible = { fg = c.bg },
    BufferLineCloseButtonSelected = { fg = c.label, bg = c.bg },

    -- BufferLineDevIconLua = { fg = c.error, bg = c.BrightMagenta },
    -- BufferLineDevIconLuaSelected = { fg = c.error, bg = c.BrightMagenta },
    -- BufferLineIndicatorVisible = { fg = c.type, bg = c.error },
    -- BufferLineSeparatorSelected = { fg = c.type, bg = c.error },
    -- BufferLineWarningDiagnosticSelected = { fg = c.warning, bg = c.primary, style = s.underline },
    -- BufferLineErrorDiagnosticSelected = { fg = c.error, bg = c.primary, style = s.underline },
    -- BufferLineInfoDiagnosticSelected = { fg = c.info, bg = c.primary, style = s.underline },
    -- BufferLineHintDiagnosticSelected = { fg = c.hint, bg = c.primary, style = s.underline },
    -- BufferLineTabSeparatorSelected = { fg = c.primary, bg = c.error, style = s.underline },
    -- BufferLineDiagnosticSelected = { fg = c.primary, bg = c.error, style = s.underline },
    -- BufferLineDuplicateSelected = { fg = c.primary, bg = c.error, style = s.underline },
    -- BufferLineModifiedSelected = { fg = c.primary, bg = c.error, style = s.underline },
    -- BufferLineNumbersSelected = { fg = c.primary, bg = c.error, style = s.underline },
    -- BufferLinePickSelected = { fg = c.primary, bg = c.error, style = s.underline },
    -- BufferLineTabSelected = { fg = c.primary, bg = c.error, style = s.underline },
    -- BufferLineWarningSelected = { fg = c.warning, bg = c.primary, style = s.underline },
    -- BufferLineErrorSelected = { fg = c.error, bg = c.primary, style = s.underline },
    -- BufferLineInfoSelected = { fg = c.info, bg = c.primary, style = s.underline },
    -- BufferLineHintSelected = { fg = c.hint, bg = c.primary, style = s.underline },
  }
  return theme
end
return M
