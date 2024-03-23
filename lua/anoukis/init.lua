local editor = require("anoukis.editor")
local syntax = require("anoukis.syntax")
local terminal = require("anoukis.terminal")
local M = {}

local function get_plugin_filenames(directory)
  local filenames = {}
  for file in io.popen("ls -1 " .. directory):lines() do
    local name, extension = file:match("([^%.]*)%.([^%.]*)$")
    if extension == "lua" then -- Ensure only Lua files are considered
      table.insert(filenames, name)
    end
  end
  return filenames
end

function M.highlight(group, hl)
  if hl.style then
    if type(hl.style) == "table" then
      for _, style in ipairs(hl.style) do
        hl[style] = true
      end
    elseif hl.style:lower() ~= "none" then
      for s in string.gmatch(hl.style, "([^,]+)") do
        hl[s] = true
      end
    end
    hl.style = nil
  end

  vim.api.nvim_set_hl(0, group, hl)
end

function M.syntax(stx)
  for group, colors in pairs(stx) do
    M.highlight(group, colors)
  end
end

function M.load()
  local e = editor.setup()
  local s = syntax.setup()
  terminal.setup()
  vim.o.termguicolors = true
  vim.g.colors_name = "anoukis"
  M.syntax(e.highlights)
  M.syntax(s.highlights)

  local plugin_names = get_plugin_filenames("/home/fafa/code/anoukis/lua/anoukis/plugins/")
  for _, name in ipairs(plugin_names) do
    local plugin = require("anoukis.plugins." .. name)
    local p = plugin.setup()
    M.syntax(p.highlights)
  end

end

return M
