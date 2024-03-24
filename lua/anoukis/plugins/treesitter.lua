local c = require("palette.base").colors
local s = require("palette.base").style
local p = require("palette.colors")
local M = {}
-- Ref: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
-- -- Identifiers
-- 		["@variable"] = { fg = C.text, style = O.styles.variables or {} }, -- Any variable name that does not have another highlight.
-- 		["@variable.builtin"] = { fg = C.red, style = O.styles.properties or {} }, -- Variable names that are defined by the languages, like this or self.
-- 		["@variable.parameter"] = { fg = C.maroon, style = O.styles.variables or {} }, -- For parameters of a function.
-- 		["@variable.member"] = { fg = C.lavender }, -- For fields.
--
-- 		["@constant"] = { link = "Constant" }, -- For constants
-- 		["@constant.builtin"] = { fg = C.peach, style = O.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
-- 		["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.
--
-- 		["@module"] = { fg = C.lavender, style = O.styles.miscs or { "italic" } }, -- For identifiers referring to modules and namespaces.
-- 		["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.
--
-- 		-- Literals
-- 		["@string"] = { link = "String" }, -- For strings.
-- 		["@string.regexp"] = { fg = C.peach, style = O.styles.strings or {} }, -- For regexes.
-- 		["@string.escape"] = { fg = C.pink, style = O.styles.strings or {} }, -- For escape characters within a string.
-- 		["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)
-- 		["@string.special.symbol"] = { fg = C.flamingo },
-- 		["@string.special.url"] = { fg = C.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
--
-- 		["@character"] = { link = "Character" }, -- character literals
-- 		["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)
--
-- 		["@boolean"] = { link = "Boolean" }, -- For booleans.
-- 		["@number"] = { link = "Number" }, -- For all numbers
-- 		["@number.float"] = { link = "Float" }, -- For floats.
--
-- 		-- Types
-- 		["@type"] = { link = "Type" }, -- For types.
-- 		["@type.builtin"] = { fg = C.yellow, style = O.styles.properties or { "italic" } }, -- For builtin types.
-- 		["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)
-- 		["@type.qualifier"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)
--
-- 		["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
-- 		["@property"] = { fg = C.lavender, style = O.styles.properties or {} }, -- Same as TSField.
--
-- 		-- Functions
-- 		["@function"] = { link = "Function" }, -- For function (calls and definitions).
-- 		["@function.builtin"] = { fg = C.peach, style = O.styles.functions or {} }, -- For builtin functions: table.insert in Lua.
-- 		["@function.call"] = { link = "Function" }, -- function calls
-- 		["@function.macro"] = { fg = C.teal, style = O.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in Rust.
--
-- 		["@function.method"] = { link = "Function" }, -- For method definitions.
-- 		["@function.method.call"] = { link = "Function" }, -- For method calls.
--
-- 		["@constructor"] = { fg = C.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
-- 		["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.
--
-- 		-- Keywords
-- 		["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
-- 		["@keyword.function"] = { fg = C.mauve, style = O.styles.keywords or {} }, -- For keywords used to define a function.
-- 		["@keyword.operator"] = { fg = C.mauve, style = O.styles.operators or {} }, -- For new keyword operator
-- 		["@keyword.import"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
-- 		["@keyword.storage"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
-- 		["@keyword.repeat"] = { link = "Repeat" }, -- For keywords related to loops.
-- 		["@keyword.return"] = { fg = C.mauve, style = O.styles.keywords or {} },
-- 		["@keyword.exception"] = { link = "Exception" }, -- For exception related keywords.
--
-- 		["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
--
-- 		["@keyword.directive"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
-- 		["@keyword.directive.define"] = { link = "Define" }, -- preprocessor definition directives
-- 		-- JS & derivative
-- 		["@keyword.export"] = { fg = C.sky, style = O.styles.keywords },
--
-- 		-- Punctuation
-- 		["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
-- 		["@punctuation.bracket"] = { fg = C.overlay2 }, -- For brackets and parenthesis.
-- 		["@punctuation.special"] = { link = "Special" }, -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).
--
-- 		-- Comment
-- 		["@comment"] = { link = "Comment" },
--
-- 		["@comment.error"] = { fg = C.base, bg = C.red },
-- 		["@comment.warning"] = { fg = C.base, bg = C.yellow },
-- 		["@comment.hint"] = { fg = C.base, bg = C.blue },
-- 		["@comment.todo"] = { fg = C.base, bg = C.flamingo },
--
-- 		-- Markup
-- 		["@markup"] = { fg = C.text }, -- For strings considerated text in a markup language.
-- 		["@markup.strong"] = { fg = C.maroon, style = { "bold" } }, -- bold
-- 		["@markup.italic"] = { fg = C.maroon, style = { "italic" } }, -- italic
-- 		["@markup.strikethrough"] = { fg = C.text, style = { "strikethrough" } }, -- strikethrough text
-- 		["@markup.underline"] = { link = "Underlined" }, -- underlined text
--
-- 		["@markup.heading"] = { fg = C.blue, style = { "bold" } }, -- titles like: # Example
--
-- 		["@markup.math"] = { fg = C.blue }, -- math environments (e.g. `$ ... $` in LaTeX)
-- 		["@markup.environment"] = { fg = C.pink }, -- text environments of markup languages
-- 		["@markup.environment.name"] = { fg = C.blue }, -- text indicating the type of an environment
--
-- 		["@markup.link"] = { link = "Tag" }, -- text references, footnotes, citations, etc.
-- 		["@markup.link.url"] = { fg = C.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
--
-- 		["@markup.raw"] = { fg = C.teal }, -- used for inline code in markdown and for doc in python (""")
--
-- 		["@markup.list"] = { link = "Special" },
-- 		["@markup.list.checked"] = { fg = C.green }, -- todo notes
-- 		["@markup.list.unchecked"] = { fg = C.overlay1 }, -- todo notes
--
-- 		-- Diff
-- 		["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
-- 		["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
-- 		["@diff.delta"] = { link = "diffChanged" }, -- deleted text (for diff files)
--
-- 		-- Tags
-- 		["@tag"] = { fg = C.mauve }, -- Tags like html tag names.
-- 		["@tag.attribute"] = { fg = C.teal, style = O.styles.miscs or { "italic" } }, -- Tags like html tag names.
-- 		["@tag.delimiter"] = { fg = C.sky }, -- Tag delimiter like < > /
--
-- 		-- Misc
-- 		["@error"] = { link = "Error" },
--
-- 		-- Language specific:
-- 		-- bash
-- 		["@function.builtin.bash"] = { fg = C.red, style = O.styles.miscs or { "italic" } },
--
-- 		-- markdown
-- 		["@markup.heading.1.markdown"] = { link = "rainbow1" },
-- 		["@markup.heading.2.markdown"] = { link = "rainbow2" },
-- 		["@markup.heading.3.markdown"] = { link = "rainbow3" },
-- 		["@markup.heading.4.markdown"] = { link = "rainbow4" },
-- 		["@markup.heading.5.markdown"] = { link = "rainbow5" },
-- 		["@markup.heading.6.markdown"] = { link = "rainbow6" },
--
-- 		-- java
-- 		["@constant.java"] = { fg = C.teal },
--
-- 		-- css
-- 		["@property.css"] = { fg = C.lavender },
-- 		["@property.id.css"] = { fg = C.blue },
-- 		["@property.class.css"] = { fg = C.yellow },
-- 		["@type.css"] = { fg = C.lavender },
-- 		["@type.tag.css"] = { fg = C.mauve },
-- 		["@string.plain.css"] = { fg = C.peach },
-- 		["@number.css"] = { fg = C.peach },
--
-- 		-- toml
-- 		["@property.toml"] = { fg = C.blue }, -- Differentiates between string and properties
--
-- 		-- json
-- 		["@label.json"] = { fg = C.blue }, -- For labels: label: in C and :label: in Lua.
--
-- 		-- lua
-- 		["@constructor.lua"] = { fg = C.flamingo }, -- For constructor calls and definitions: = { } in Lua.
--
-- 		-- typescript
-- 		["@property.typescript"] = { fg = C.lavender, style = O.styles.properties or {} },
-- 		["@constructor.typescript"] = { fg = C.lavender },
--
-- 		-- TSX (Typescript React)
-- 		["@constructor.tsx"] = { fg = C.lavender },
-- 		["@tag.attribute.tsx"] = { fg = C.teal, style = O.styles.miscs or { "italic" } },
--
-- 		-- yaml
-- 		["@variable.member.yaml"] = { fg = C.blue }, -- For fields.
--
-- 		-- Ruby
-- 		["@string.special.symbol.ruby"] = { fg = C.flamingo },
--
-- 		-- PHP
-- 		["@function.method.php"] = { link = "Function" },
-- 		["@function.method.call.php"] = { link = "Function" },
--
-- 		-- C/CPP
-- 		["@type.builtin.c"] = { fg = C.yellow, style = {} },
-- 		["@property.cpp"] = { fg = C.text },
-- 		["@type.builtin.cpp"] = { fg = C.yellow, style = {} },
--
-- 		-- gitcommit
-- 		["@comment.warning.gitcommit"] = { fg = C.yellow },
--
-- 		-- Misc
-- 		gitcommitSummary = { fg = C.rosewater, style = O.styles.miscs or { "italic" } },
-- 		zshKSHFunction = { link = "Function" },

function M.setup()
  local theme = {}
  theme.highlights = {
    -- identifiers
    ["@variable"] = { link = "Constant" }, -- Any variable name that does not have another highlight.
    -- ["@variable.builtin"] = {link = "Constant"}, -- Variable names that are defined by the languages, like this or self.
    -- ["@variable.parameter"] = {link = "Constant"}, -- For parameters of a function.
    -- ["@variable.member"] = {link = "Constant"}, -- For fields.

    ["@constant"] = { link = "Constant" }, -- For constants
    -- ["@constant.builtin"] = {link = "Constant"}, -- For constant that are built in the language: nil in Lua.
    -- ["@constant.macro"] = {link = "Constant"}, -- For constants that are defined by macros: NULL in C.

    ["@module"] = { link = "Type" }, -- For identifiers referring to modules and namespaces.
    ["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.

    --literals
    ["@string"] = { link = "String" }, -- For strings.
    -- ["@string.regexp"] = {link = "String"}, -- For regexes.
    -- ["@string.escape"] = {link = "String"}, -- For escape characters within a string.
    -- ["@string.special"] = {link = "String"}, -- other special strings (e.g. dates)
    -- ["@string.special.symbol"] = {link = "String"},
    -- ["@string.special.url"] = {link = "String"}, -- urls, links and emails

    ["@character"] = { link = "String" }, -- character literals
    -- ["@character.special"] = {link = "String"}, -- special characters (e.g. wildcards)

    ["@boolean"] = { link = "Boolean" }, -- For booleans.
    ["@number"] = { link = "Number" }, -- For all numbers
    -- ["@number.float"] = {link = "Number"}, -- For floats.

    --types
    ["@type"] = { link = "Type" }, -- For types.
    -- ["@type.builtin"] = {link = "Type"}, -- For builtin types.
    -- ["@type.definition"] = {link = "Type"}, -- type definitions (e.g. `typedef` in C)
    -- ["@type.qualifier"] = {link = "Type"}, -- type qualifiers (e.g. `const`)

    ["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
    ["@property"] = { link = "Constant" }, -- Same as TSField.

    --functions
    ["@function"] = { link = "Function" }, -- For function (calls and definitions).
    -- ["@function.builtin"] = {link = "Function"}, -- For builtin functions: table.insert in Lua.
    -- ["@function.call"] = {link = "Function"}, -- function calls
    -- ["@function.macro"] = {link = "Function"}, -- For macro defined functions (calls and definitions): each macro_rules in Rust.
    --
    -- ["@function.method"] = {link = "Function"}, -- For method definitions.
    -- ["@function.method.call"] = {link = "Function"}, -- For method calls.

    ["@constructor"] = { link = "Function" }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
    ["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

    -- Keywords
    ["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
    -- ["@keyword.function"] = {link = "Keyword"}, -- For keywords used to define a function.
    -- ["@keyword.operator"] = {link = "Keyword"}, -- For new keyword operator
    ["@keyword.import"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
    ["@keyword.export"] = { link = "Constant" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
    ["@keyword.repeat"] = { link = "Repeat" }, -- For keywords related to loops.
    ["@keyword.storage"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
    -- ["@keyword.return"] = {link = "Keyword"},
    ["@keyword.exception"] = { link = "Exception" }, -- For exception related keywords.
    ["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
    ["@keyword.directive"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
    ["@keyword.directive.define"] = { link = "Define" }, -- preprocessor definition directives

    -- Punctuation
    ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
    ["@punctuation.bracket"] = { link = "Delimiter" }, -- For brackets and parenthesis.
    ["@punctuation.special"] = { link = "Special" }, -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

    -- Comment
    ["@comment"] = { link = "Comment" },
    ["@comment.error"] = { link = "Error" },
    ["@comment.warning"] = { link = "Warning" },
    ["@comment.hint"] = { link = "Info" },
    ["@comment.todo"] = { link = "Todo" },

    -- Markup
    ["@markup"] = { link = "Comment" }, -- For strings considerated text in a markup language.
    ["@markup.strong"] = { link = "Bold" }, -- bold
    ["@markup.italic"] = { link = "Italic" }, -- italic
    ["@markup.strikethrough"] = { style = s.strikethrough }, -- strikethrough text
    ["@markup.underline"] = { link = "Underlined" }, -- underlined text
    ["@markup.heading"] = { style = s.bold }, -- titles like: # Example
    ["@markup.math"] = { link = "Comment" }, -- math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.environment"] = { link = "Comment" }, -- text environments of markup languages
    ["@markup.environment.name"] = { link = "Comment" }, -- text indicating the type of an environment
    ["@markup.link"] = { fg = p.purple400, style = s.underline }, -- text references, footnotes, citations, etc.
    ["@markup.link.url"] = { fg = p.purple400, style = s.underline }, -- urls, links and emails
    ["@markup.raw"] = { link = "Comment" }, -- used for inline code in markdown and for doc in python (""")
    ["@markup.list"] = { link = "Special" }, -- todo notes
    ["@markup.list.checked"] = { link = "Special" }, -- todo notes
    ["@markup.list.unchecked"] = { link = "Special" }, -- todo notes

    -- Diff
    ["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
    ["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
    ["@diff.delta"] = { link = "diffChanged" }, -- changed text (for diff files)

    -- Tags
    ["@tag"] = { link = "Tag" }, -- Tags like html tag names.
    ["@tag.attribute"] = { link = "Tag" }, -- Tags like html tag names.
    ["@tag.delimiter"] = { link = "Tag" }, -- Tag delimiter like < > /

    -- Misc
    ["@error"] = { link = "Error" },

    -- languages
    -- css
    ["@property.css"] = { link = "Constant" },
    ["@property.id.css"] = { link = "Constant" },
    ["@property.class.css"] = { link = "Constant" },
    ["@type.css"] = { link = "Type" },
    ["@type.tag.css"] = { link = "Type" },
    ["@string.plain.css"] = { link = "String" },
    ["@number.css"] = { link = "Number" },

    -- toml
    ["@property.toml"] = { link = "Constant" }, -- Differentiates between string and properties

    -- yaml
    ["@variable.member.yaml"] = { link = "Constant" },

    -- json
    ["@label.json"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.

    -- lua
    ["@constructor.lua"] = { link = "Function" }, -- For constructor calls and definitions: = { } in Lua.

    -- typescript
    ["@property.typescript"] = { link = "Constant" },
    ["@constructor.typescript"] = { link = "Function" },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { link = "Function" },
    ["@tag.attribute.tsx"] = { link = "Tag" },

    -- c/cpp
    ["@type.builtin.c"] = { link = "Type" },
    ["@property.cpp"] = { link = "Constant" },
    ["@type.builtin.cpp"] = { link = "Type" },

    -- gitcommit
    ["@comment.warning.gitcommit"] = { link = "Warning" },

    -- Misc
    ["gitcommitSummary"] = { link = "Comment" },
    ["zshKSHFunction"] = { link = "Function" },
  }
  return theme
end

return M
