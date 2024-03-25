-- local c = require("palette.base").colors
-- local s = require("palette.base").style
local M = {}

function M.setup( c, s)
  local theme = {}

  theme.highlights = {
    CmpItemAbbrDeprecated = { fg = c.error.fg, bg = c.error.bg },
    CmpItemAbbrMatch = { fg = c.constant, style = s.bold },
    CmpItemAbbrMatchFuzzy = { fg = c.tag, style = s.bold },

    -- CmpItemMenu = { fg = c.comment, bg = c.error.bg },
    -- CmpItemAbbr = { fg = c.fg, bg = c.bg },

    CmpItemKind = { fg = c.tag },
    CmpItemKindField = { fg = c.constant },
    CmpItemKindProperty = { fg = c.constant },
    CmpItemKindEvent = { fg = c.constant },

    CmpItemKindText = { fg = c.tag },
    CmpItemKindEnum = { link = "Type" },
    CmpItemKindKeyword = { link = "Keyword" },

    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindConstructor = { fg = c.method },
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
