local M = {}

function M.setup()
  local theme = {}

  theme.highlights = {
    LazyNormal = { link = "Normal" },
    LazyButton = { bg = _P.gray200 },
    LazyComment = { fg = _P.gray500 },
    LazyCommit = { fg = _P.slate500 },
    LazyCommitIssue = { link = "WarningMsg" },
    LazyCommitScope = { fg = _C.constant },
    LazyCommitType = { link = "LazyCommitScope" },
    LazyDimmed = { link = "LazyCommitScope" },
    LazyProp = { link = "LazyCommitScope" },
  }

  return theme
end

return M
