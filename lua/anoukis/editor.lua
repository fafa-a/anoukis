local M = {}

function M.setup()
  local theme = {}
  -- example
  --  Example = { fg = c.fg, bg = c.bg, style = {s.bold, s.italic} },
  theme.highlights = {
    -- editor
    -- ColorColumn = { bg = c.cursorLine }, -- used for the columns set with 'colorcolumn'
    -- Conceal = { fg = c.slate400, bg = c.bg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = _C.cursor.fg, bg = _C.cursor.bg }, -- character under the cursor
    lCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn = { bg = c.cursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = _C.cursorLine }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
    Directory = { fg = _C.punctuation }, -- directory names (and other special names in listings)
    EndOfBuffer = { bg = _S.none }, -- filler lines (~) after the end of the buffer.  By default,-- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|. this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = _C.error.fg, bg = _C.error.bg }, -- error messages on the command line
    VertSplit = { fg = _P.slate700 }, -- the column separating vertically split windows
    Folded = { fg = _C.tag, style = _S.bold }, -- line used for closed folds
    -- Folded = { fg = _C.tag }, -- line used for closed folds
    FoldColumn = { link = "Punctuation" }, -- 'foldcolumn'
    SignColumn = { link = "Normal" }, -- column where |signs| are displayed
    SignColumnSB = { link = "Normal" }, -- column where |signs| are displayed
    Substitute = { fg = _C.bg, bg = _P.purple500 }, -- |:substitute| replacement text highlighting
    LineNr = { fg = _C.comment }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = _C.comment }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = {
      fg = _C.matchParen.fg,
      bg = _C.matchParen.bg,
    }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    MsgArea = { link = "Normal" }, -- Area for messages and cmdline
    -- MsgSeparator = { link = "Normal" }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = _P.blue500 }, -- |more-prompt|
    NonText = { fg = _C.comment }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).  See also |hl-EndOfBuffer|.
    Normal = { fg = _C.fg, bg = _O.transparent_background and _S.none or _C.bgFloat }, -- normal text
    NorlmalNC = { fg = _C.fg, bg = _C.bg }, -- normal text in non-current windows
    -- NormalSB = { link = "Normal" }, -- normal text in non-current windows
    NormalFloat = { fg = _C.fg, bg =  _P.slate100 }, -- Normal text in floating windows
    FloatBorder = { fg = _P.slate900 , bg = _C.bg}, -- Border of floating windows
    FloatTitle = { fg = _C.constant, style = _S.bold }, -- Title of floating windows
    Pmenu = { fg = _C.p.menu.fg, bg =_C.p.menu.bg, blend = _C.p.menu.blend }, -- Popup menu: normal item.
    PmenuSel = { bg = _C.p.menuSel.bg }, -- Popup menu: selected item.
    PmenuSbar = { bg = _C.p.menuSbar.bg }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = _C.p.menuThumb.bg }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = _P.blue500 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { fg = _C.bg, bg = _P.blue500 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = _C.search.fg, bg = _C.search.bg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { link = "Search" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { fg = _C.cursearch.fg, bg = _C.cursearch.bg }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    SpecialKey = { fg = _C.attribute }, -- Unprintable characters: text displayed differently from what it really is.
    -- FIXME highlight any word as an error
    SpellBad = { fg = _C.error.fg, bg = _C.error.bg, style = _S.undercurl }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { fg = _C.warning.fg, bg = _C.warning.bg, style = _S.undercurl }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { fg = _C.info.fg, bg = _C.info.bg, style = _S.undercurl }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { fg = _P.gray500, bg = _P.gray200, style = _S.undercurl }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.    StatusLine = { fg = c.tag, bg = p.purple100 },
    StatusLine = { fg = _C.tag, bg = _P.purple100 }, -- status line of current window
    StatusLineNC = { fg = _P.purple100, bg = _C.tag }, -- status line of non-current window
    TabLine = { fg = _P.slate700, bg = _P.slate800 }, -- tab pages line, not active tab page label
    TabLineFill = { fg = _C.constant, bg = _C.bg }, -- tab pages line, where there are no labels
    TabLineSel = { fg = _P.purple500, bg = _P.red200, style = _S.underline }, -- tab pages line, active tab page label
    Title = { fg = _C.fg, style = _S.bold }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { fg = _C.visual.fg, bg = _C.visual.bg }, -- Visual mode selection
    VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
    Whitespace = { fg = _P.slate100 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = _P.purple200 }, -- current match in 'wildmenu' completion
    WinBar = { fg = _C.tag, style = _S.bold },
    WinBarNC = { link = "WinBar" },
    Winseparator = { link = "VertSplit" },
  }
  return theme
end

return M
