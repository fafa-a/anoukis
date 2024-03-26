local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    CmpItemAbbrDeprecated = { fg = _C.error.fg, bg = _C.error.bg },
    CmpItemAbbrMatch = { fg = _C.constant, style = _S.bold },
    CmpItemAbbrMatchFuzzy = { fg = _C.tag, style = _S.bold },

    -- CmpItemMenu = { fg = c.comment, bg = c.error.bg },
    -- CmpItemAbbr = { fg = c.fg, bg = c.bg },

    CmpItemKind = { fg = _C.tag },
    CmpItemKindField = { fg = _C.constant },
    CmpItemKindProperty = { fg = _C.constant },
    CmpItemKindEvent = { fg = _C.constant },

    CmpItemKindText = { fg = _C.tag },
    CmpItemKindEnum = { link = "Type" },
    CmpItemKindKeyword = { link = "Keyword" },

    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindConstructor = { fg = _C.method },
    CmpItemKindReference = { link = "Special" },

    CmpItemKindFunction = { link = "CmpItemKindConstructor" },
    CmpItemKindStruct = { link = "Structure" },
    CmpItemKindClass = { link = "Structure" },
    CmpItemKindModule = { link = "Structure" },
    CmpItemKindOperator = { link = "Operator" },

    CmpItemKindVariable = { link = "Identifier" },
    CmpItemKindFile = { link = "Identifier" },

    CmpItemKindUnit = { link = "Type" },
    CmpItemKindSnippet = { link = "Type" },
    CmpItemKindFolder = { link = "Type" },

    CmpItemKindMethod = { link = "CmpItemKindConstructor" },
    CmpItemKindValue = { link = "Constant" },
    CmpItemKindEnumMember = { link = "Constant" },

    CmpItemKindInterface = { link = "Type" },
    CmpItemKindColor = { link = "Special" },
    CmpItemKindTypeParameter = { link = "Type" },
  }

  return theme
end

return M
