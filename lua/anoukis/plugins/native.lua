local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    DiagnosticError = { link = "Error" }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { link = "WarningMsg" }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { link = "Todo" }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { link = "Todo" }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

    DiagnosticSignError = { fg = _C.error.fg }, -- Used for "Error" signs in sign column
    DiagnosticSignWarn = { fg = _C.warning.fg }, -- Used for "Warn" signs in sign column
    DiagnosticSignInfo = { fg = _C.info.fg }, -- Used for "Info" signs in sign column
    DiagnosticSignHint = { fg = _C.info.fg }, -- Used for "Hint" signs in sign column

    DiagnosticVirtualTextError = { link = "Error" }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { link = "WarningMsg" }, -- Used for "Warn" diagnostic virtual text
    DiagnosticVirtualTextInfo = { link = "Todo" }, -- Used for "Info" diagnostic virtual text
    DiagnosticVirtualTextHint = { link = "Todo" }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { link = "Error" }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { link = "WarningMsg" }, -- Used to underline "Warn" diagnostics
    DiagnosticUnderlineInfo = { link = "Todo" }, -- Used to underline "Info" diagnostics
    DiagnosticUnderlineHint = { link = "Todo" }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsDefaultError = { link = "Error" }, -- Used as the default "Error" diagnostic highlight group for signs and virtual text
    LspDiagnosticsDefaultWarn = { link = "WarningMsg" }, -- Used as the default "Warn" diagnostic highlight group for signs and virtual text
    LspDiagnosticsDefaultInformation = { link = "Todo" }, -- Used as the default "Info" diagnostic highlight group for signs and virtual text
    LspDiagnosticsDefaultHint = { link = "Todo" }, -- Used as the default "Hint" diagnostic highlight group for signs and virtual text

    LspSignatureActiveParameter = { link = "Keyword" }, -- Used for active parameter highlight in signature help
    -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsError = { link = "Error" }, -- Used as the "Error" diagnostic virtual text
    LspDiagnosticsWarning = { link = "WarningMsg" }, -- Used as the "Warning" diagnostic virtual text
    LSpDiagnosticsInformation = { link = "DiagnosticInfo" }, -- Used as the "Information" diagnostic virtual text
    LspDiagnosticsHint = { link = "DiagnosticHint" }, -- Used as the "Hint" diagnostic virtual text

    LspDiagnosticsVirtualTextError = { link = "ErrorMsg" }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = { link = "WarningMsg" }, -- Used for "Warn" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { link = "Todo" }, -- Used for "Info" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = { link = "Todo" }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError = { style = _S.underline, sp = _C.error.fg }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = { style = _S.underline, sp = _C.warning.fg }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = { style = _S.underline, sp = _C.info.fg }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = { style = _S.underline, sp = _C.info.fg }, -- Used to underline "Hint" diagnostics

    LspReferenceText = { link = "NormalFloat" }, -- Used for highlighting "text" references
    LspReferenceRead = { link = "NormalFloat" }, -- Used for highlighting "read" references
    LspReferenceWrite = { link = "NormalFloat" }, -- Used for highlighting "write" references
    LspCodeLens = { fg = _C.comment }, -- Used to highlight the virtual text of the codelens
    LspInlineHint = { fg = _C.comment }, -- Used to highlight the virtual text for the inline hint
    LspInfoBorder = { link = "FloatBorder" }, -- Used to render "info" diagnostic border
    LspInlayHint = {fg = _P[_VARIANT .. 300]}, -- Used for the hints provided by the inlay hints
  }

  return theme
end

return M
