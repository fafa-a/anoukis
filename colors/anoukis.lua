local colorbuddy = require("colorbuddy")
local lualine_anoukis = require("lualine.themes.anoukis")

require("lualine").setup({
  options = {
    theme = lualine_anoukis,
  },
})

colorbuddy.colorscheme("anoukis")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

Color.new("white", "#f2e5bc")
Color.new("red", "#cc6666")
Color.new("pink", "#fef601")
Color.new("green", "#99cc99")
Color.new("yellow", "#f8fe7a")
Color.new("blue", "#81a2be")
Color.new("aqua", "#8ec07c")
Color.new("cyan", "#8abeb7")
Color.new("purple", "#8e6fbd")
Color.new("violet", "#b294bb")
Color.new("orange", "#de935f")
Color.new("brown", "#a3685a")

Color.new("seagreen", "#698b69")
Color.new("turquoise", "#698b69")

-- syntax
Color.new("bgFloat", "#FBF9FF")
Color.new("fg", "#4A4453")
Color.new("cursor", "#A17EE6")
Color.new("cursorLine", "#F7F3FF")
Color.new("keyword", "#A1A8BD")
Color.new("comment", "#D8D1E5")
Color.new("punctuation", "#4A4453")
Color.new("method", "#8D8696")
Color.new("type", "#5D5765")
Color.new("string", "#4A4453")
Color.new("number", "#4A4453")
Color.new("constant", "#282430")
Color.new("tag", "#312C39")
Color.new("attribute", "#C8C1D1")
Color.new("property", "#C8C1D1")
Color.new("parameter", "#C8C1D1")
Color.new("label", "#312C39")

-- workspace
Color.new("primary", "#0099e1")
Color.new("selection", "#ADF6FF")
Color.new("search", "#B3A5C8")
Color.new("diffAdd", "#009B42")
Color.new("diffChange", "#008BDA")
Color.new("diffDelete", "#E05859")
Color.new("added", "#3cbc66")
Color.new("changed", "#0099e1")
Color.new("deleted", "#FA7883")
Color.new("diffText", "#C2E4FF")
Color.new("ok", "#3cbc66")
Color.new("okBG", "#E6FFEC")
Color.new("error", "#ff0000")
Color.new("errorBG", "#FCE4E4")
Color.new("warning", "#ff8f3a")
Color.new("warningBG", "#FBE4D5")
Color.new("info", "#0099e1")
Color.new("infoBG", "#D2ECFF")
Color.new("hint", "#7982DA")
Color.new("hintBG", "#E6E9FF")
Color.new("mergeCurrent", "#F1E8E6")
Color.new("mergeCurrentLabel", "#E5D4D0")
Color.new("mergeIncoming", "#DFEDF6")
Color.new("mergeIncomingLabel", "#CAE3F4")
Color.new("mergeParent", "#E9A2A2")
Color.new("mergeParentLabel", "#E9A2A2")

-- colors
Color.new("white", "#ffffff")
Color.new("black", "#000000")
Color.new("lightGray", "#d3d3d3")
Color.new("gray", "#676a77")
Color.new("darkGray", "#373a41")
Color.new("BrightMagenta", "#ce32c0")
Color.new("violet", "#A17EE6")

local background_string = "#FBF9FF"
Color.new("background", background_string)
Color.new("softPurple", background_string)

--TODO: DELETE
Group.new("Debug", c.error, c.BrightMagenta)

Group.new("Normal", c.keyword, c.softPurple) -- Normal text
Group.new("NormalNC", c.fg, c.bgFloat)
Group.new("InvNormal", c.softPurple, c.error)
Group.new("NormalFloat", c.fg, c.bgFloat) -- Normal text in floating windows
Group.new("NormalSB", nil, c.bgFloat) -- Normal text in floating windows.
Group.new("FloatBorder", c.black) -- Border of floating windows
Group.new("FloatTitle", c.constant, nil, s.bold) -- Title of floating windows

Group.new("CursorLine", nil, c.CursorLine) -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
Group.new("Whitespace", c.superwhite) -- "nbsp", "space", "tab" and "trail" in 'listchars'
Group.new("Comment", c.comment, nil, s.italic) -- Any comment
Group.new("LineNr", c.comment) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new("CursorLineNr", c.comment) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new("Search", c.softPurple, c.search) -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
Group.new("IncSearch", c.softPurple, c.search) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new("CurSearch", c.softPurple, c.violet:dark()) -- Highlighting a search pattern under the cursor (see 'hlsearch')

Group.new("ColorColumn", nil, c.cursor:light():light()) -- Columns set with 'colorcolumn'
Group.new("Conceal", nil) -- Placeholder characters substituted for concealed text (see 'conceallevel')
Group.new("Cursor", c.softPurple, c.cursor) -- character under the cursor
Group.new("lCursor", g.Cursor) -- the character under the cursor when |language-mapping| is used (see 'guicursor')
Group.new("CursorIM", g.Cursor) -- like Cursor, but used when in IME mode
Group.new("Directory", c.punctuation) -- directory names (and other special names in listings)
-- Group.new("EndOfBuffer", nil, c.punctuation)
Group.new("TermCursor", c.white, c.black) -- cursor in a focused terminal
Group.new("TermCursorNC", nil) -- cursor in an unfocused terminal
Group.new("ErrorMsg", nil, c.error) -- error messages on the command line

Group.new("VertSplit", c.black) -- Column separating vertically split windows
Group.link("Winseparator", g.VertSplit) -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.

Group.new("Folded", c.tag, c.punctuation) -- line used for closed folds
Group.new("SignColumn", g.Normal) -- column where |signs| are displayed
Group.new("FoldColumn", g.SignColumn) -- 'foldcolumn'
Group.new("Substitute", g.IncSearch) -- |:substitute| replacement text highlighting
Group.new("MatchParen", c.bg, c.BrightMagenta) -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
Group.new("ModeMsg", g.Normal) -- 'showmode' message (e.g., "-- INSERT -- ")
Group.new("MsgArea", g.Normal) -- Area for messages and cmdline
-- Group.new("MsgSeparator", nil)
Group.new("MoreMsg", c.primary) -- |more-prompt|
Group.new("NonText", c.white) -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
Group.new("NormalNC", g.Normal) -- normal text in non-current windows

-- TODO work on design
Group.new("Pmenu", c.bg, c.black) -- Popup menu: normal item.
Group.new("PmenuSel", c.black, c.selection) -- Popup menu: selected item.
Group.new("PmenuSbar", nil, c.lightGray) -- Popup menu: scrollbar.
Group.new("PmenuThumb", nil, c.darkGray) -- Popup menu: Thumb of the scrollbar.
Group.new("Question", c.primary) -- |hit-enter| prompt and yes/no questions
Group.new("QuickFixLine", c.white, c.primary) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
Group.new("SpecialKey", c.attribute) -- Unprintable characters: text displayed differently from what it really is.
Group.new("StatusLine", c.tag, c.softPurple) -- status line of current window
Group.new("StatusLineNC", c.softPurple, c.tag) -- status line of non-current window
Group.new("TabLine", c.darkGray, c.gray) -- tab pages line, not active tab page label
Group.new("TabLineFill", c.constant, c.bg) -- tab pages line, where there are no labels
Group.new("TabLineSel", c.primary, c.lightGray, s.underline) -- tab pages line, active tab page label
Group.new("Title", c.black) -- titles for output from ":set all", ":autocmd" etc.
Group.new("Visual", c.constant, c.softPurple:dark()) -- Visual mode selection
Group.new("VisualMode", g.Visual, g.Visual) -- Visual mode selection
Group.new("VisualLineMode", g.Visual, g.Visual) -- Visual mode selection
Group.new("VisualNOS", g.Visual) -- Visual mode selection when vim is "Not Owning the Selection".
Group.new("WarningMsg", c.warning) -- warning messages
Group.new("WildMenu", nil, c.selection) -- current match in 'wildmenu' completion

Group.new("Variable", c.constant)
Group.link("@variable", g.Variable)
Group.link("@variable.builtin", g.Statement)
Group.new("Constant", c.constant)
Group.link("@constant", g.Constant)
Group.link("@symbol", g.Constant)
Group.new("@constant.builtin", c.keyword)
Group.new("String", c.string, nil, s.italic)
Group.link("@string", g.String)
Group.link("@string.escape", g.Character)
Group.new("Character", g.String)
Group.link("@character", g.Character)
Group.new("Number", c.number)
Group.link("@number", g.Number)
Group.new("Boolean", c.keyword)
Group.link("@boolean", g.Boolean)
-- Group.new("Float", nil)
Group.new("Identifier", c.fg)
Group.link("@identifier", g.Identifier)
Group.new("Function", c.method, nil, s.bold)
Group.link("@function", g.Function)
Group.link("@function.call", g.Function)
Group.link("@function.builtin", g.Function)
Group.link("@method", g.Function)
Group.new("Property", c.property)
Group.link("@property", g.Property)
Group.link("@field", g.Property)
Group.new("Parameter", c.parameter)
Group.link("@parameter", g.Parameter)
Group.new("Statement", c.keyword)
Group.link("@statement", g.Statement)
Group.new("Conditional", c.keyword)
Group.link("@conditional", g.Conditional)
Group.new("Label", c.label)
Group.link("@label", g.Label)
Group.link("@annotation", g.Label)
Group.new("Punctuation", c.punctuation)
Group.link("@punctuation", g.Punctuation)
Group.link("@punctuation.bracket", g.Punctuation)
Group.link("@punctuation.delimeter", g.Punctuation)
Group.link("@punctuation.special", g.Punctuation)
Group.link("@keyword", g.Statement)
Group.link("@keyword.modifier", g.Statement)
Group.link("@operator", g.Statement)
Group.new("PreProc", c.keyword)
Group.link("@preproc", g.PreProc)
Group.new("Type", c.type)
Group.link("@type", g.Type)
-- Group.link("@type.builtin", c.keyword)
Group.new("@type.builtin", c.type)
Group.link("@type.qualifier", g.Statement)
Group.link("@struct", g.Type)
Group.link("@class", g.Type)
Group.link("@constructor", g.Type)
Group.link("@namespace", g.Type)
Group.new("@module", g.Type)
Group.new("Typedef", c.type)
Group.new("Special", g.Character)
Group.new("Attribute", c.attribute)
Group.new("SpecialChar", c.attribute)
Group.new("Tag", g.Tag)
Group.new("Underlined", nil, nil, s.underline)
Group.new("Bold", nil, nil, s.bold)
Group.new("Italic", nil, nil, s.italic)
Group.new("Ignore", c.softPurple, nil, s.none)
Group.new("Error", g.ErrorMsg)
Group.new("Todo", c.softPurple, c.info)
Group.new("WinBar", c.tag, nil, s.bold)
Group.new("WinBarNC", c.fg)
Group.new("@text", g.Identifier)
Group.new("@text.strong", g.Bold)
Group.new("@text.italic", g.Italic)
Group.new("@text.underline", g.Underlined)
Group.new("TextTitle", c.keyword)
Group.new("@text.title", g.TextTitle)
Group.new("TextURI", c.tag, nil, s.underline)
Group.link("@text.uri", g.TextURI)
-- Group.link("@attribute", c.label)
Group.new("Attribute", c.label)
Group.link("@attribute", g.Attribute)
Group.new("Tag", g.Tag)
Group.link("@tag", g.Tag)
Group.new("TextLiteral", g.Property)
Group.link("@text.literal", g.TextLiteral)
Group.new("TagAttribute", c.attribute)
Group.link("@tag.attribute", g.TagAttribute)
Group.new("@info", c.info)
Group.new("@error", g.Error)
Group.new("@warning", g.WarningMsg)

-- Diagnostic
Group.new("DiagnosticError", g.Error)
Group.new("DiagnosticWarn", g.WarningMsg)
Group.new("DiagnosticInfo", c.info)
Group.new("DiagnosticHint", c.hint)
Group.new("DiagnosticVirtualTextError", c.error, c.errorBG)
Group.new("DiagnosticVirtualTextWarn", c.warning, c.warningBG)
Group.new("DiagnosticVirtualTextInfo", c.info, c.infoBG)
Group.new("DiagnosticVirtualTextHint", c.hint, c.hintBG)
Group.new("DiagnosticUnderlineError", nil, nil, s.undercurl)
Group.new("DiagnosticUnderlineWarn", nil, nil, s.undercurl)
Group.new("DiagnosticUnderlineInfo", nil, nil, s.undercurl)
Group.new("DiagnosticUnderlineHint", nil, nil, s.undercurl)
Group.new("DiagnosticSignError", c.error)
Group.new("DiagnosticSignWarn", c.warning)
Group.new("DiagnosticSignInfo", c.info)
Group.new("DiagnosticSignHint", c.hint)

-- Diff
Group.new("gitDiff", c.gray)
Group.new("DiffAdd", c.diffAdd)
Group.new("DiffChange", c.diffChange)
Group.new("DiffDelete", c.diffDelete)
Group.new("DiffText", c.diffText)

-- Indent Blankline
Group.new("IblIndent", c.softPurple:dark())

-- Treesitter highlight groups update
-- Treesitter standard capture groups
Group.new("@variable.parameter", g.Constant)
Group.new("@variable.member", g.Constant)
Group.new("@module", g.Type)
Group.new("@string.special.symbol", g.Constant)
Group.new("@markup.strong", g.Bold)
Group.new("@markup.underline", g.Underlined)
Group.new("@markup.heading", g.Title)
Group.new("@markup.link.url", g.TextURI)
Group.new("@markup.raw", g.TextLiteral)
Group.new("@markup.list", g.Punctuation)

-- Semantic Highlighting
Group.new("@lsp.type.namespace", g.Type)
Group.new("@lsp.type.type", g.Type)
Group.new("@lsp.type.class", g.Type)
Group.new("@lsp.type.enum", g.Type)
Group.new("@lsp.type.interface", g.Type)
Group.new("@lsp.type.struct", g.Type)
Group.new("@lsp.type.parameter", g.Variable)
Group.new("@lsp.type.variable", g.Variable)
Group.new("@lsp.type.property", c.Constant)
Group.new("@lsp.type.enumMember", g.Constant)
Group.new("@lsp.type.function", g.Function)
Group.new("@lsp.type.method", g.Function)
Group.new("@lsp.type.macro", g.Label)
Group.new("@lsp.type.decorator", g.Label)
Group.new("@lsp.type.builtin", g.Label)
Group.new("@lsp.mod.readonly", g.Constant)
Group.new("@lsp.typemod.function.declaration", g.Function)
Group.new("@lsp.typemod.function.readonly", g.Function)

--  gitsigns
Group.new("GitSignsAdd", c.added)
Group.new("GitSignsAddNr", g.GitSignsAdd)
Group.new("GitSignsAddLn", g.GitSignsAdd)
Group.new("GitSignsChange", c.changed)
Group.new("GitSignsChangeNr", g.GitSignsChange)
Group.new("GitSignsChangeLn", g.GitSignsChange)
Group.new("GitSignsDelete", c.deleted)
Group.new("GitSignsDeleteNr", g.GitSignsDelete)
Group.new("GitSignsDeleteLn", g.GitSignsDelete)

-- nvim-neo-tree/neo-tree.nvim
Group.new("NeoTreeRootName", c.constant, nil, s.bold)
Group.new("NeoTreeGitAdded", c.added)
Group.new("NeoTreeGitConflict", c.mergeParent)
Group.new("NeoTreeGitDeleted", c.deleted)
Group.new("NeoTreeGitIgnored", c.constant)
Group.new("NeoTreeGitModified", c.changed)
Group.new("NeoTreeGitRenamed", c.tag)
Group.new("NeoTreeGitUntracked", c.added)
Group.new("NeoTreeIndentMarker", g.IblIndent)
Group.new("NeoTreeSymbolicLinkTarget", c.violet)
-- Group.new("NeoTreeTitleBar", g.StatusLine)

-- Notify
-- Group.new("NotifyBackground", c.bgFloat)
Group.new("NotifyERRORBorder", c.constant)
Group.new("NotifyERRORIcon", c.deleted)
Group.new("NotifyERRORTitle", c.deleted, nil, s.italic)
Group.new("NotifyWARNBorder", c.constant)
Group.new("NotifyWARNIcon", c.warning)
Group.new("NotifyWARNTitle", c.warning, nil, s.italic)
Group.new("NotifyINFOBorder", c.constant)
Group.new("NotifyINFOIcon", c.changed)
Group.new("NotifyINFOTitle", c.changed, nil, s.italic)
Group.new("NotifyDEBUGBorder", c.constant)
Group.new("NotifyDEBUGIcon", c.orange)
Group.new("NotifyDEBUGTitle", c.orange, nil, s.italic)
Group.new("NotifyTRACEBorder", c.constant)
Group.new("NotifyTRACEIcon", c.violet)
Group.new("NotifyTRACETitle", c.violet, nil, s.italic)

-- Telescope
Group.link("TelescopeBorder", g.FloatBorder)
Group.new("TelescopeMatching ", c.constant)
Group.new("TelescopeSelection", c.constant, c.softPurple:dark())
Group.new("TelescopeSelectionCaret", g.TelescopeSelection, g.TelescopeSelection, s.bold)

-- Harpoon
Group.new("HarpoonWindow", c.black, c.bgFloat)
Group.new("HarpoonMenuTitle", c.error)

-- Dashboard
Group.new("DashboardHeader", c.attribute:dark())
Group.new("DashboardIcon", g.DashboardHeader)
Group.new("DashboardDesc", g.DashboardHeader)
Group.new("DashboardKey", g.DashboardHeader, nil, s.bold)
Group.new("DashboardFooter", g.DashboardHeader, nil, s.italic)
Group.new("DashboardShortcut", g.DashboardHeader)
Group.new("DashboardCenter", g.DashboardHeader)
Group.new("DashboardMruTitle", g.DashboardHeader)
Group.new("DashboardProjectTitle", g.DashboardHeader)
Group.new("DashboardFiles", g.DashboardHeader)

--Trouble
Group.link("TroubleNormal", g.Normal)
Group.new("TroubleCount", c.warning)
Group.new("TroubleText", c.constant)

-- BufferLine
Group.link("BufferLineFill", g.Normal)
Group.new("BufferLineBackground", c.bg, c.comment)
Group.new("BufferLineBufferSelected", c.label, c.bg, s.bold + s.italic)
Group.link("BufferLineIndicatorSelected", g.BufferLineBufferSelected)

-- separators
Group.new("BufferLineSeparator", c.tag, c.comment)
Group.link("BufferLineOffsetSeparator", g.Debug)

-- close buttons
Group.new("BufferLineCloseButton", c.bg, c.comment)
Group.new("BufferLineCloseButtonVisible", c.bg)
Group.new("BufferLineCloseButtonSelected", c.label, c.bg)

-- Group.new("BufferLineDevIconLua", c.error, c.BrightMagenta)
-- Group.new("BufferLineDevIconLuaSelected", c.error, c.BrightMagenta)
-- Group.new("BufferLineIndicatorVisible", c.type, c.error)
-- Group.new("BufferLineSeparatorSelected", c.type, c.error)
-- Group.new("BufferLineWarningDiagnosticSelected", c.warning, c.primary, s.underline)
-- Group.new("BufferLineErrorDiagnosticSelected", c.error, c.primary, s.underline)
-- Group.new("BufferLineInfoDiagnosticSelected", c.info, c.primary, s.underline)
-- Group.new("BufferLineHintDiagnosticSelected", c.hint, c.primary, s.underline)
-- Group.new("BufferLineTabSeparatorSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineCloseButtonSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineDiagnosticSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineDevIconLuaSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineIndicatorSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineDuplicateSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineModifiedSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineNumbersSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineBufferSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLinePickSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineTabSelected", c.primary, c.error, s.underline)
-- Group.new("BufferLineWarningSelected", c.warning, c.primary, s.underline)
-- Group.new("BufferLineErrorSelected", c.error, c.primary, s.underline)
-- Group.new("BufferLineInfoSelected", c.info, c.primary, s.underline)
-- Group.new("BufferLineHintSelected", c.hint, c.primary, s.underline)

-- NeoVim
Group.new("healthError", c.error,c.errorBG )
Group.new("healthSuccess", c.ok, c.okBG)
Group.new("healthWarning", c.warning, c.warningBG)

--svelte
Group.new("@tag.svelte", c.diffAdd)
Group.new("@tag.attribute.svelte", c.error)
