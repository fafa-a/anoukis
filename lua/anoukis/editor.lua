-- local c = require("palette.base").colors
-- local s = require("palette.base").style
-- local p = require("palette.colors")

local M = {}

function M.setup(c, s, p)
  local theme = {}
  -- example
  --  Example = { fg = c.fg, bg = c.bg, style = {s.bold, s.italic} },
  theme.highlights = {
    -- editor
    -- ColorColumn = { bg = c.cursorLine }, -- used for the columns set with 'colorcolumn'
    -- Conceal = { fg = c.slate400, bg = c.bg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.bg, bg = c.cursor }, -- character under the cursor
    lCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn = { bg = c.cursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.cursorLine }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
    Directory = { fg = c.punctuation }, -- directory names (and other special names in listings)
    EndOfBuffer = { bg = c.bg }, -- filler lines (~) after the end of the buffer.  By default,-- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|. this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = c.error.fg, bg = c.error.bg }, -- error messages on the command line
    VertSplit = { fg = p.slate700 }, -- the column separating vertically split windows
    Folded = { fg = c.tag, bg = c.punctuation }, -- line used for closed folds
    FoldColumn = { link = "SignColumn" }, -- 'foldcolumn'
    SignColumn = { link = "Normal" }, -- column where |signs| are displayed
    SignColumnSB = { link = "Normal" }, -- column where |signs| are displayed
    Substitute = { fg = c.bg, bg = p.purple500 }, -- |:substitute| replacement text highlighting
    LineNr = { fg = c.comment }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.comment }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = c.bg, bg = p.purple700 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    MsgArea = { link = "Normal" }, -- Area for messages and cmdline
    -- MsgSeparator = { link = "Normal" }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = p.blue500 }, -- |more-prompt|
    NonText = { fg = p.slate100 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).  See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg, bg = c.bg }, -- normal text
    NorlmalNC = { link = "Normal" }, -- normal text in non-current windows
    -- NormalSB = { link = "Normal" }, -- normal text in non-current windows
    NormalFloat = { fg = c.fg, bg = c.bgFloat }, -- Normal text in floating windows
    FloatBorder = { fg = p.slate900, bg = c.bg }, -- Border of floating windows
    FloatTitle = { fg = c.constant, style = s.bold }, -- Title of floating windows
    Pmenu = { fg = c.fg, bg = p.gray100, blend = 0 }, -- Popup menu: normal item.
    PmenuSel = { bg = p.gray300 }, -- Popup menu: selected item.
    PmenuSbar = { bg = p.gray400 }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = p.gray950 }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = p.blue500 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { fg = c.bg, bg = p.blue500 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.bg, bg = p.purple500 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { link = "Search" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { fg = c.bg, bg = p.purple800 }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    SpecialKey = { fg = c.attribute }, -- Unprintable characters: text displayed differently from what it really is.
    -- FIXME highlight any word as an error
    SpellBad = { fg = c.error.fg, bg = c.error.bg, style = s.undercurl }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { fg = c.warning.fg, bg = c.warning.bg, style = s.undercurl }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { fg = c.info.fg, bg = c.info.bg, style = s.undercurl }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { fg = p.gray500, bg = p.gray200, style = s.undercurl }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.    StatusLine = { fg = c.tag, bg = p.purple100 },
    StatusLine = { fg = c.tag, bg = p.purple100 }, -- status line of current window
    StatusLineNC = { fg = p.purple100, bg = c.tag }, -- status line of non-current window
    TabLine = { fg = p.slate700, bg = p.slate800 }, -- tab pages line, not active tab page label
    TabLineFill = { fg = c.constant, bg = c.bg }, -- tab pages line, where there are no labels
    TabLineSel = { fg = p.purple500, bg = p.red200, style = s.underline }, -- tab pages line, active tab page label
    Title = { fg = c.fg, style = s.bold }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { fg = c.fg, bg = p.purple300 }, -- Visual mode selection
    VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.warning.fg ,bg = c.warning.bg}, -- warning messages
    Whitespace = { fg = p.slate100 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = p.purple200 }, -- current match in 'wildmenu' completion
    WinBar = { fg = c.tag, style = s.bold },
    WinBarNC = { link = "WinBar" },
    Winseparator = { link = "VertSplit" },
  }
  return theme
end

return M
