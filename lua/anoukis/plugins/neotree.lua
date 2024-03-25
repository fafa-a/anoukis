local c = require("palette.base").colors
local s = require("palette.base").style
local p = require("palette.colors")

local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    NeoTreeRootName = { fg = c.constant, style = s.bold },
    NeoTreeGitAdded = { fg = c.git.added },
    NeoTreeGitConflict = { fg = c.git.deleted },
    NeoTreeGitDeleted = { fg = c.git.deleted },
    NeoTreeGitIgnored = { fg = c.comment },
    NeoTreeGitModified = { fg = c.git.changed },
    NeoTreeGitUnstaged = { fg = p.red300 },
    NeoTreeGitStaged = { fg = c.git.added },
    NeoTreeGitUntracked = { fg = p.rose300 },
    NeoTreeIndentMarker = { fg = p.purple100 },
    NeoTreeSymbolicLinkTarget = { fg = p.purple700 },
    NeoTreeTitleBar = { fg = p.slate100, bg = p.slate800 },
		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },

    -- TODO: Add more highlights
    --
    -- NeoTreeDirectoryName = { fg = C.blue },
		-- NeoTreeDirectoryIcon = { fg = C.blue },
		-- NeoTreeNormal = { fg = C.text, bg = active_bg },
		-- NeoTreeNormalNC = { fg = C.text, bg = active_bg },
		-- NeoTreeExpander = { fg = C.overlay0 },
		-- NeoTreeIndentMarker = { fg = C.overlay0 },
		-- NeoTreeRootName = { fg = C.blue, style = { "bold" } },
		-- NeoTreeSymbolicLinkTarget = { fg = C.pink },
		-- NeoTreeModified = { fg = C.peach },
		--
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
