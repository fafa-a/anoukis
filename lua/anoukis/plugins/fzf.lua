local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    FzfLuaNormal = { link = "Normal" },
    FzfLuaBorder = { link = "FloatBorder" },
    FzfLuaTitle = { fg = _C.fg, bg = _S.none, style = _S.bold },
    FzfLuaHelpBorder = { link = "FzfLuaBorder" },
    FzfLuaPreviewNormal = { link = "FzfLuaNormal" },
    FzfLuaPreviewBorder = { link = "FzfLuaBorder" },
    FzfLuaPreviewTitle = { link = "FzfLuaTitle" },
    FzfLuaCursor = { link = "Cursor" },
    FzfLuaFzfCursorLine = { fg = _C.fg, bg = _P[_VARIANT .. 100] },
    FzfLuaCursorLineNr = { link = "CursorLineNr" },
    FzfLuaSearch = { link = "IncSearch" },
    FzfLuaScrollBorderFull = { link = "FzfLuaBorder" },
    FzfLuaScrollBorderEmpty = { link = "FzfLuaBorder" },
    FzfLuaScrollFloatEmpty = { link = "PmenuSbar" },
    FzfLuaScrollFloatFull = { link = "PmenuThumb" },
    FzfLuaHeaderBind = { fg = _P[_VARIANT .. 500] },
    FzfLuaHeaderText = { link = "FzfLuaNormal" },
    FzfLuaFzfQuery = { fg = _P[_VARIANT .. 700] },

    FzfLuaFzfNormal = { link = "FzfLuaNormal" },
    FzfLuaFzfInfo = { fg = _P[_VARIANT .. 300] },
    FzfLuaFzfPointer = { link = "FzfLuaNormal" },
    FzfLuaFzfPrompt = { link = "Constant" },
    FzfLuaFzfGutter = { link = "FzfLuaNormal" },
    FzfLuaFzfHeader = { link = "FzfLuaNormal" },
    FzfLuaFzfSpinner = { fg = _P[_VARIANT .. 500] },

    FzfLuaDirPart = { fg = _C.type },
    FzfLuaFilePart = { fg = _C.constant },

    -- FzfLuaFzfMatch = error,
    -- FzfLuaFzfBorder = error,
    -- FzfLuaFzfScrollbar = warning,
    -- FzfLuaFzfSeparator = error,
    -- FzfLuaFzfMarker = error,

    -- FzfLuaBufName = { fg = _P.cyan300 },
    -- FzfLuaBufNr = { fg = _P.cyan600 },
    -- FzfLuaBufLineNr = { fg = _P.yellow600 },
    -- FzfLuaBufFlagCur = { fg = _P.gray600 },
    -- FzfLuaBufFlagAlt = { fg = _P.orange300 },
    -- FzfLuaTabTitle = { fg = _P.orange300, bold = true },
    -- FzfLuaTabMarker = { fg = _P.rose300, bold = true },
    -- FzfLuaLiveSym = { fg = _P.rose600 },
    --
    -- FzfLuaDirIcon = warning,
    -- FzfLuaPath = error,
    -- FzfLuaPathColNr = { fg = _C.error.fg, bg = _C.error.bg },
    -- FzfLuaPathLineNr = { fg = _C.error.fg, bg = _C.error.bg },
    -- FzfLuaBufName = error,
    -- FzfLuaFzfMarker = error,
  }

  return theme
end

return M
