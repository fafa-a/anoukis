local c = require("palette.base").colors
local s = require("palette.base").style
local p = require("palette.colors")
local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    LazyNormal = { link = "Normal" },
    LazyButton = { bg = p.gray200 },
    LazyComment = { fg = p.gray500 },
    LazyCommit = { fg = p.slate500 },
    LazyCommitIssue = { link = "WarningMsg" },
    LazyCommitScope = { fg = c.constant },
    LazyCommitType = { link = "LazyCommitScope" },
    LazyDimmed = { link = "LazyCommitScope" },
    LazyProp = { link = "LazyCommitScope" },
  }

  return theme
end

return M
