local M = {}

function M.setup()
  local theme = {}

  local colors= {
    light = {
      button = _P.gray200,
      comment = _P.gray500,
      commit = _P.slate500,
    },
    dark = {
      button = _P.gray800,
      comment = _P.gray500,
      commit = _P.slate500,
    },
  }

  theme.highlights = {
    LazyNormal = { link = "Normal" },
    LazyButton = { bg = colors[_COLOR_BACKGROUND].button },
    LazyComment = { fg = colors[_COLOR_BACKGROUND].comment },
    LazyCommit = { fg = colors[_COLOR_BACKGROUND].commit },
    LazyCommitIssue = { link = "WarningMsg" },
    LazyCommitScope = { fg = _C.constant },
    LazyCommitType = { link = "LazyCommitScope" },
    LazyDimmed = { link = "LazyCommitScope" },
    LazyProp = { link = "LazyCommitScope" },
  }

  return theme
end

return M
