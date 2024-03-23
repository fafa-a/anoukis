local c = require("palette.base").colors
local s = require("palette.base").style
local p = require("palette.colors")
local M = {}

function M.setup()
  local theme = {}
  -- example
  --  Example = { fg = c.fg, bg = c.bg, style = {s.bold, s.italic} },
  theme.highlights = {
    Comment = { fg = c.comment, style = s.italic }, -- Any comment
    SpecialComment = { link = "Special" }, -- Any comment
    Constant = { fg = c.constant }, -- Any constant
    String = { fg = c.string, style = s.italic }, -- Any string
    Character = { fg = c.string }, -- Any character
    Number = { fg = c.number }, -- A number
    Float = { link = "Number" }, -- A floating point number
    Boolean = { fg = c.keyword }, -- A boolean
    Identifier = { fg = c.fg }, -- Any variable name
    Function = { fg = c.method, style = s.bold }, -- function name (also: methods for classes)
    Statement = { fg = c.keyword }, -- Any statement
    Conditional = { fg = c.keyword }, -- if, then, else, endif, switch, etc.
    Repeat = { fg = c.keyword }, -- for, do, while, etc.
    Label = { fg = c.label }, -- case, default, etc.
    Operator = { link = "Statement" }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.keyword }, -- any other keyword
    Exception = { link = "Statement" }, -- try, catch, throw

    PreProc = { fg = c.keyword }, -- generic Preprocessor
    Include = { link = "PreProc" }, -- preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { link = "PreProc" }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    StorageClass = { fg = c.keyword }, -- static, register, volatile, etc.
    Structure = { fg = c.type }, -- struct, union, enum, etc.
    Special = { link = "String" }, -- any special symbol
    Type = { fg = c.type }, -- int, long, char, etc.
    Typedef = { link = "Type" }, -- A typedef
    SpecialChar = { fg = c.attribute }, -- special character in a constant
    Tag = { fg = c.tag }, -- you can use CTRL-] on this
    Delimiter = { fg = c.punctuation }, -- character that needs attention like , or .
    Debug = { link = "Special" }, -- debugging statements

    Underlined = { style = s.underline }, -- text that is underlined
    Bold = { style = s.bold }, -- text that is bold
    Italic = { style = s.italic }, -- text that is italic
    -- Ignore = { fg = c.bg }, -- text that is ignored

    Error = { fg = c.error.fg, bg = c.error.bg }, -- any erroneous construct
    Todo = { fg = c.info.fg, bg = c.info.bg }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr = { fg = c.comment }, -- Line number for quickfix lists
    qfFileName = { fg = c.constant }, -- File name for quickfix lists
    htmlH1 = { fg = c.tag }, -- h1 in html
    htmlh2 = { fg = c.tag }, -- h2 in html
    mkdHeading = { fg = c.tag }, -- markdown headings
    mkdCode = { fg = c.string }, -- markdown code
    mkdCodeDelimiter = { fg = c.punctuation }, -- markdown code delimiter
    mkdCodeStart = { fg = c.punctuation }, -- markdown code start
    mkdCodeEnd = { fg = c.punctuation }, -- markdown code end
    mkdLink = { fg = c.tag }, -- markdown link

    -- debugging
    debugPC = { fg = c.warning.fg, bg = c.warning.bg }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = c.error.fg, bg = c.error.bg }, -- used for breakpoint in terminal-debug

    -- illuminate
    illuminatedWord = { bg = p.purple200, style = "None" }, -- used for highlighting the current word under the cursor
    illuminatedWordText = { link = "illuminatedWord" }, -- used for highlighting the fist declaration of the current word under the cursor
    illuminatedWordRead = { link = "illuminatedWord" }, -- used for highlighting all the references of the current word under the cursor
    illuminatedCurWord = { link = "illuminatedWord" }, -- used for highlighting the current word under the cursor

    -- diff
    -- diffAdded = {},
    -- diffRemoved = {},
    -- diffChanged = {},
    -- diffOldFile = {},
    -- diffNewFile = {},
    -- diffFile = {},
    -- diffLine = {},
    -- diffIndexLine = {},
    DiffAdd = { fg = c.diff.add }, -- diff mode: Added line
    DiffChange = { fg = c.diff.change }, -- diff mode: Changed line
    DiffDelete = { fg = c.diff.delete }, -- diff mode: Deleted line
    DiffText = { fg = c.diff.text }, -- diff mode: Changed text within a changed line

    healthError = { fg = c.health.error, bg = c.error.bg }, -- LSP error
    healthWarning = { fg = c.health.warning, bg = c.warning.bg }, -- LSP warning
    healthSuccess = { fg = c.health.success, bg = c.info.bg }, -- LSP success

    -- glyphs ???
    GlyphPalette1 = { fg = p.red500 },
    GlyphPalette2 = { fg = p.orange500 },
    GlyphPalette3 = { fg = p.green500 },
    GlyphPalette4 = { fg = p.blue500 },
    GlyphPalette5 = { fg = p.purple500 },
    GlyphPalette6 = { fg = p.red500 },
    GlyphPalette7 = { fg = p.orange500 },
    GlyphPalette8 = { fg = p.green500 },

    -- rainbow
    Rainbow1 = { fg = p.red500 },
    Rainbow2 = { fg = p.orange500 },
    Rainbow3 = { fg = p.yellow500 },
    Rainbow4 = { fg = p.green500 },
    Rainbow5 = { fg = p.blue500 },
    Rainbow6 = { fg = p.purple500 },
  }

  return theme
end

return M
