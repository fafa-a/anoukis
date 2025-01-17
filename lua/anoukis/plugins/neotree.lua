local M = {}

function M.setup()
  local theme = {}
  local variant = _O.variants

  theme.highlights = {
    NeoTreeRootName = { fg = _C.constant, style = _S.bold },
    NeoTreeGitAdded = { fg = _C.git.added },
    NeoTreeGitConflict = { fg = _C.git.deleted },
    NeoTreeGitDeleted = { fg = _C.git.deleted },
    NeoTreeGitIgnored = { fg = _C.comment },
    NeoTreeGitModified = { fg = _C.git.changed },
    NeoTreeGitUnstaged = { fg = _P.red300 },
    NeoTreeGitStaged = { fg = _C.git.added },
    NeoTreeGitUntracked = { fg = _P.red300 },
    NeoTreeIndentMarker = { fg = _COLOR_BACKGROUND == 'light' and _P[variant .. 100] or _P[variant .. 700] },
    NeoTreeSymbolicLinkTarget = { fg = _P.purple700 },
    NeoTreeTitleBar = { fg = _P.slate100, bg = _P.slate950 },
		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },

    -- TODO: Add more highlights
    --
    NeoTreeDirectoryName = { fg = _COLOR_BACKGROUND == 'light' and _P.slate800 or _P.slate200 },
		NeoTreeDirectoryIcon = { fg = _P.slate500 },
		NeoTreeNormal = { fg = _C.fg, bg = _C.bg },
		-- NeoTreeNormalNC = { fg = C.text, bg = active_bg },
		-- NeoTreeExpander = { fg = C.overlay0 },
		-- NeoTreeIndentMarker = { fg = C.overlay0 },
		-- NeoTreeRootName = { fg = C.blue, style = { "bold" } },
		-- NeoTreeSymbolicLinkTarget = { fg = C.pink },
		-- NeoTreeModified = { fg = C.peach },
    NeoTreeDotfile = { fg = _P.slate400 },
		-- NeoTreeGitAdded = { fg = C.green },
		-- NeoTreeGitConflict = { fg = C.red },
		-- NeoTreeGitDeleted = { fg = C.red },
		-- NeoTreeGitIgnored = { fg = C.overlay0 },
		-- NeoTreeGitModified = { fg = C.yellow },
		-- NeoTreeGitUnstaged = { fg = C.red },
		-- NeoTreeGitUntracked = { fg = C.mauve },
		-- NeoTreeGitStaged = { fg = C.green },
		--
		-- NeoTreeTitleBar = { fg = C.mantle, bg = C.blue },
		--
		-- NeoTreeFileNameOpened = { fg = C.pink },
		-- NeoTreeDimText = { fg = C.overlay1 },
		-- NeoTreeFilterTerm = { fg = C.green, style = { "bold" } },
		-- NeoTreeTabActive = { bg = active_bg, fg = C.lavender, style = { "bold" } },
		-- NeoTreeTabInactive = { bg = inactive_bg, fg = C.overlay0 },
		-- NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		-- NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		-- NeoTreeVertSplit = { fg = C.base, bg = inactive_bg },
		-- NeoTreeWinSeparator = {
		-- 	fg = O.transparent_background and C.surface1 or C.base,
		-- 	bg = O.transparent_background and C.none or C.base,
		-- },
		-- NeoTreeStatusLineNC = { fg = C.mantle, bg = C.mantle },
  }

  return theme
end

return M
