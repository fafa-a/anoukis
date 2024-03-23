local p = require("palette.colors")
local M = {}

function M.setup()
  vim.g.terminal_color_0 = p.slate800
  vim.g.terminal_color_1 = p.red500
  vim.g.terminal_color_2 = p.green500
  vim.g.terminal_color_3 = p.orange500
  vim.g.terminal_color_4 = p.blue500
  vim.g.terminal_color_5 = p.purple500
  vim.g.terminal_color_6 = p.cyan500
  vim.g.terminal_color_7 = p.slate400
  vim.g.terminal_color_8 = p.slate600
  vim.g.terminal_color_9 = p.red600
  vim.g.terminal_color_10 = p.green600
  vim.g.terminal_color_11 = p.orange600
  vim.g.terminal_color_12 = p.blue600
  vim.g.terminal_color_13 = p.purple600
  vim.g.terminal_color_14 = p.cyan600
  vim.g.terminal_color_15 = p.slate200
end

return M
