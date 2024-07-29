local M = {}
local variant = _O.variants
-- Ref: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

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

    ["@character"] = { link = "@string" }, -- character literals
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
    ["@markup.strikethrough"] = { style = _S.strikethrough }, -- strikethrough text
    ["@markup.underline"] = { link = "Underlined" }, -- underlined text
    ["@markup.heading"] = { style = _S.bold }, -- titles like: # Example
    ["@markup.math"] = { link = "Comment" }, -- math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.environment"] = { link = "Comment" }, -- text environments of markup languages
    ["@markup.environment.name"] = { link = "Comment" }, -- text indicating the type of an environment
    ["@markup.link"] = { fg = _P.purple400, style = _S.underline }, -- text references, footnotes, citations, etc.
    ["@markup.link.url"] = { fg = _P.purple400, style = _S.underline }, -- urls, links and emails
    ["@markup.raw"] = { fg = _P[_VARIANT .. 500]}, -- used for inline code in markdown and for doc in python (""")
    ["@markup.list"] = { link = "Special" }, -- todo notes
    ["@markup.list.checked"] = { link = "Special" }, -- todo notes
    ["@markup.list.unchecked"] = { link = "Special" }, -- todo notes
    ["@markup.raw.block.vimdoc"] = { fg = _C.tag },

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
    ["@property.id.css"] = { link = "Constant" },
    ["@operator.css"] = { link = "Constant" },
    ["@property.class.css"] = { link = "Constant" },
    ["@type.css"] = { link = "Constant" },
    ["@type.tag.css"] = { link = "Constant" },
    ["@string.plain.css"] = { link = "String" },
    ["@property.css"] = { link = "Statement" },
    ["@number.css"] = { fg = _P[variant .. 500]},
    ["@punctuation.bracket.css"] = { fg =_COLOR_BACKGROUND == 'light' and _P.slate950  or _P.slate500 },

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

    -- Rust
    ["@lsp.typemod.enum.declaration.rust"] = { link = "Function" },
    ["@lsp.typemod.method.defaultLibrary.rust"] = { link = "Function" },

    -- Svelte
    ["@tag.svelte"] = { fg =  _COLOR_BACKGROUND == 'light' and _P.slate950 or _P.slate500 },
    ["@tag.attribute.svelte"] = { link = "Tag" },
    ["@tag.delimiter.svelte"] = { fg =  _COLOR_BACKGROUND == 'light' and _P.slate950 or _P.slate500 },
    ["@string.svelte"] = { link = "Constant" },
    ["@variable.svelte"] = { link = "Constant" },
    ["@none.svelte"] = { link = "Constant" },
    ["@lsp.typemod.variable.local.svelte"] = { fg = _C.constant, style = _S.bold },
    ["@string.special.url.svelte"] = { fg = _P[_COLOR_BACKGROUND == 'light' and _VARIANT .. 600 or _VARIANT .. 300] },
    ["@property.svelte"] = { link = "Constant" },
    ["@function.svelte"] = { link = "Function" },
    ["@markup.heading.svelte"] = { fg = _P[_COLOR_BACKGROUND == 'light' and _VARIANT .. 600 or _VARIANT .. 300] },
  }
  return theme
end

return M
