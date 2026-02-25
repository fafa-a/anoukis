local editor = require("anoukis.editor")
local syntax = require("anoukis.syntax")
-- local terminal = require("anoukis.terminal")

local M = {}

local function get_plugin_filenames(directory)
  local filenames = {}
  for name, type in vim.fs.dir(directory) do
    if type == "file" and name:match("%.lua$") then
      local base_name = name:match("(.+)%.lua$")
      if base_name then
        table.insert(filenames, base_name)
      end
    end
  end
  return filenames
end

function M.highlight(group, hl)
  if hl.style then
    if type(hl.style) == "table" then
      for _, style in ipairs(hl.style) do
        if style == "" or style == "none" then
          hl["italic"] = false
          hl["bold"] = false
          break
        end
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

local function get_plugin_directory()
  local script_path = debug.getinfo(1, "S").source:sub(2)
  local script_dir = script_path:match("(.*/)") or ""
  return script_dir .. "plugins/"
end

function M.load()
  _P = require("palette.colors")
  _C = require("palette.base").colors
  _S = require("palette.base").style

  local ed = editor.setup()
  local sy = syntax.setup()
  -- terminal.setup()

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "anoukis"

  M.syntax(ed.highlights)
  M.syntax(sy.highlights)

  local plugin_dir = get_plugin_directory()

  local plugin_names = get_plugin_filenames(plugin_dir)

  local excluded_plugins = { bufferline = true }

  for _, name in ipairs(plugin_names) do
    if not excluded_plugins[name] then
      local ok, plugin = pcall(require, "anoukis.plugins." .. name)
      if ok then
        local pl = plugin.setup()
        M.syntax(pl.highlights)
      end
    end
  end
end

function M.setup(options)
  local default_options = require("anoukis.config").options
  options = options or {}
  _O = vim.tbl_deep_extend("force", {}, default_options, options)
  _VARIANT = _O.variants or default_options.variants
  _COLOR_BACKGROUND = _O.color_background or default_options.color_background
end

return M
