local M = {}

function M.setup()
  local theme = {}
  local styles = _O.styles

  theme.highlights = {
    Comment = { fg = _C.comment,style = styles.comments }, -- Any comment
    SpecialComment = { link = "Special" }, -- Any comment
    Constant = { fg = _C.constant, style = styles.variables }, -- Any constant
    String = { fg = _C.string, style = styles.strings }, -- Any string
    Character = { link = "String" }, -- Any character
    Number = { fg = _C.number, style = styles.numbers }, -- A number
    Float = { link = "Number" }, -- A floating point number
    Boolean = { fg = _C.keyword, style = styles.booleans }, -- A boolean
    Identifier = { fg = _C.fg }, -- Any variable name
    Function = { fg = _C.method, style = styles.functions }, -- function name (also: methods for classes)
    Statement = { fg = _C.keyword, style = styles.operators }, -- Any statement
    Conditional = { fg = _C.keyword, style = styles.conditionals }, -- if, then, else, endif, switch, etc.
    Repeat = { fg = _C.keyword }, -- for, do, while, etc.
    Label = { fg = _C.label }, -- case, default, etc.
    Operator = { link = "Statement" }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = _C.keyword, style = styles.keywords }, -- any other keyword
    Exception = { link = "Statement" }, -- try, catch, throw

    PreProc = { fg = _C.keyword }, -- generic Preprocessor
    Include = { link = "PreProc" }, -- preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { link = "PreProc" }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    StorageClass = { fg = _C.keyword }, -- static, register, volatile, etc.
    Structure = { fg = _C.type }, -- struct, union, enum, etc.
    Special = { link = "String" }, -- any special symbol
    Type = { fg = _C.type, style = styles.types }, -- int, long, char, etc.
    Typedef = { link = "Type" }, -- A typedef
    SpecialChar = { fg = _C.attribute }, -- special character in a constant
    Tag = { fg = _C.tag }, -- you can use CTRL-] on this
    Delimiter = { fg = _C.punctuation }, -- character that needs attention like , or .
    Debug = { link = "Special" }, -- debugging statements

    Underlined = { style = _S.underline }, -- text that is underlined
    Bold = { style = _S.bold }, -- text that is bold
    Italic = { style = _S.italic }, -- text that is italic
    -- Ignore = { fg = c.bg }, -- text that is ignored

    Error = { fg = _C.error.fg, bg = _C.error.bg }, -- any erroneous construct
    Todo = { fg = _C.info.fg, bg = _C.info.bg }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr = { fg = _C.comment }, -- Line number for quickfix lists
    qfFileName = { fg = _C.constant }, -- File name for quickfix lists
    htmlH1 = { fg = _C.tag }, -- h1 in html
    htmlh2 = { fg = _C.tag }, -- h2 in html
    mkdHeading = { fg = _C.tag }, -- markdown headings
    mkdCode = { fg = _C.string }, -- markdown code
    mkdCodeDelimiter = { fg = _C.punctuation }, -- markdown code delimiter
    mkdCodeStart = { fg = _C.punctuation }, -- markdown code start
    mkdCodeEnd = { fg = _C.punctuation }, -- markdown code end
    mkdLink = { fg = _C.tag }, -- markdown link

    -- debugging
    debugPC = { fg = _C.warning.fg, bg = _C.warning.bg }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = _C.error.fg, bg = _C.error.bg }, -- used for breakpoint in terminal-debug

    -- diff
    -- diffAdded = {},
    -- diffRemoved = {},
    -- diffChanged = {},
    -- diffOldFile = {},
    -- diffNewFile = {},
    -- diffFile = {},
    -- diffLine = {},
    -- diffIndexLine = {},
    DiffAdd = { fg = _C.diff.add }, -- diff mode: Added line
    DiffChange = { fg = _C.diff.change }, -- diff mode: Changed line
    DiffDelete = { fg = _C.diff.delete }, -- diff mode: Deleted line
    DiffText = { fg = _C.diff.text }, -- diff mode: Changed text within a changed line

    healthError = { fg = _C.health.error, bg = _C.error.bg }, -- LSP error
    healthWarning = { fg = _C.health.warning, bg = _C.warning.bg }, -- LSP warning
    healthSuccess = { fg = _C.health.success, bg = _C.info.bg }, -- LSP success

    -- glyphs ???
    GlyphPalette1 = { fg = _P.red500 },
    GlyphPalette2 = { fg = _P.orange500 },
    GlyphPalette3 = { fg = _P.green500 },
    GlyphPalette4 = { fg = _P.blue500 },
    GlyphPalette5 = { fg = _P.purple500 },
    GlyphPalette6 = { fg = _P.red500 },
    GlyphPalette7 = { fg = _P.orange500 },
    GlyphPalette8 = { fg = _P.green500 },

    -- rainbow
    Rainbow1 = { fg = _P.red500 },
    Rainbow2 = { fg = _P.orange500 },
    Rainbow3 = { fg = _P.yellow500 },
    Rainbow4 = { fg = _P.green500 },
    Rainbow5 = { fg = _P.blue500 },
    Rainbow6 = { fg = _P.purple500 },
  }

  return theme
end

return M
