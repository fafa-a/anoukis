# Axes d'amélioration - Code

Ce document liste tous les points d'amélioration du code pour le colorscheme Anoukis.

## 📝 Problèmes identifiés

### 1. Typo dans `editor.lua`

**Fichier** : `lua/anoukis/editor.lua:37`

```lua
NorlmalNC = { fg = _C.fg, bg = _C.bg }, -- normal text in non-current windows
```

**Problème** : `NorlmalNC` au lieu de `NormalNC`. Le highlight group n'est pas reconnu par Vim.

**Solution** : Corriger la typo :

```lua
NormalNC = { fg = _C.fg, bg = _C.bg }, -- normal text in non-current windows
```

---

### 2. Commentaire FIXME non résolu

**Fichier** : `lua/anoukis/editor.lua:53`

```lua
-- FIXME highlight any word as an error
SpellBad = { fg = _C.error.fg, bg = _C.error.bg, style = _S.undercurl },
```

**Problème** : Commentaire FIXME présent depuis longtemps sans résolution.

**Solution** : 
- Soit implémenter la feature (highlight dynamique des mots)
- Soit supprimer le commentaire si non pertinent
- Soit créer une issue GitHub pour tracker

---

### 3. Cas spécial `bufferline` non expliqué

**Fichier** : `lua/anoukis/init.lua:76-78`

```lua
if name == "bufferline" then
  goto continue
end
```

**Problème** : Pourquoi `bufferline` est-il skipé spécifiquement ? Pas de commentaire explicatif.

**Solution** : Ajouter un commentaire ou refactoriser :

```lua
-- bufferline nécessite un traitement spécial car il expose une API différente
-- et est géré séparément via lualine ou sa propre config
if name == "bufferline" then
  goto continue
end
```

Ou mieux, créer une liste d'exclusion explicite :

```lua
local excluded_plugins = { bufferline = true }
if excluded_plugins[name] then
  goto continue
end
```

---

### 4. Dépendance implicite à `notify`

**Fichier** : `lua/palette/base.lua:6-7`

```lua
if not success then
  vim.notify = require("notify")
  vim.notify("An error occurred: " .. result, vim.log.levels.ERROR, { title = "Anoukis setup" })
end
```

**Problème** : Le code suppose que `notify` est installé. Si ce n'est pas le cas, une erreur supplémentaire sera levée.

**Solution** : Vérifier l'existence ou utiliser `vim.notify` natif :

```lua
if not success then
  local msg = "[Anoukis] Error calculating cursor line color: " .. tostring(result)
  vim.notify(msg, vim.log.levels.ERROR)
end
```

---

### 5. Manque d'annotations LuaCATS / types

**Fichier** : Tous les fichiers

**Problème** : Aucune annotation de type LuaCATS pour la documentation et l'autocomplétion LSP.

**Solution** : Ajouter des annotations EmmyLua/LuaCATS :

```lua
---@class AnoukisConfig
---@field transparent_background boolean
---@field color_background "light" | "dark"
---@field diagnostic_background boolean
---@field variants string
---@field styles table<string, string[]>

---@param options? AnoukisConfig
function M.setup(options)
  -- ...
end
```

---

### 6. Incohérence dans la gestion des styles

**Fichiers** : `lua/anoukis/init.lua:19-35`, `lua/anoukis/plugins/*.lua`

**Problème** : Les styles sont parfois définis avec `_S.bold`, parfois avec `{ "bold" }`.

Exemples :
```lua
-- Dans config.lua
styles = {
  comments = { "italic" },  -- Tableau de strings
  functions = { "bold" },
}

-- Dans treesitter.lua
["@markup.heading"] = { style = _S.bold },  -- String directe
["@markup.italic"] = { link = "Italic" },  -- Link
```

**Solution** : Unifier l'approche. Recommandation : toujours utiliser `_S.*` pour la consistence :

```lua
-- Unifier dans base.lua
local style = {
  bold = "bold",
  italic = "italic",
  -- ...
}

-- Utilisation uniforme
["@markup.heading"] = { style = _S.bold }
["@string"] = { fg = _C.string, style = _O.styles.strings }
```

---

### 7. Utilisation de `goto continue` non idiomatique

**Fichier** : `lua/anoukis/init.lua:75-84`

```lua
for _, name in ipairs(plugin_names) do
  if name == "bufferline" then
    goto continue
  end
  -- ...
  ::continue::
end
```

**Problème** : `goto` est rarement nécessaire en Lua et peut être évité avec une structure plus simple.

**Solution** : Utiliser un `if` standard :

```lua
for _, name in ipairs(plugin_names) do
  if name ~= "bufferline" then
    local ok, plugin = pcall(require, "anoukis.plugins." .. name)
    if ok then
      local pl = plugin.setup()
      M.syntax(pl.highlights)
    end
  end
end
```

---

### 8. Manque de validation des options

**Fichier** : `lua/anoukis/config.lua`, `lua/anoukis/init.lua:95-101`

**Problème** : Aucune validation que `variants` est une valeur valide, ou que `color_background` est bien "light" ou "dark".

**Solution** : Ajouter une validation :

```lua
local valid_variants = { "purple", "gray", "red", "orange", "yellow", "green", "cyan", "blue", "rose" }
local valid_backgrounds = { "light", "dark" }

function M.setup(options)
  options = options or {}
  
  -- Validation
  if options.variants and not vim.tbl_contains(valid_variants, options.variants) then
    vim.notify("[Anoukis] Invalid variant: " .. options.variants, vim.log.levels.WARN)
    options.variants = default_options.variants
  end
  
  -- ...
end
```

---

### 9. Documentation insuffisante

**Problème** : 
- Pas de screenshots dans le README
- Liste des highlight groups non documentée
- Pas de guide pour overrides personnalisés

**Solution** :
- Ajouter des screenshots (light/dark)
- Créer une documentation des highlight groups supportés
- Expliquer comment override des couleurs :

```lua
-- Exemple à ajouter au README
require("anoukis").setup({
  -- options...
})

-- Overrides personnalisés après chargement
vim.api.nvim_set_hl(0, "Comment", { fg = "#ff0000", italic = true })
```

---

### 10. Absence de tests

**Problème** : Aucun test pour vérifier que le colorscheme charge correctement.

**Solution** : Ajouter des tests basiques (busted ou plenary.nvim) :

```lua
-- tests/anoukis_spec.lua
describe("anoukis colorscheme", function()
  it("should load without errors", function()
    assert.has_no.errors(function()
      require("anoukis").setup()
      require("anoukis").load()
    end)
  end)
  
  it("should set colors_name", function()
    assert.equal("anoukis", vim.g.colors_name)
  end)
end)
```

---

### 11. Extensibilité limitée

**Problème** : Pas de moyen pour l'utilisateur d'ajouter ses propres highlights sans modifier le code source.

**Solution** : Ajouter une option `custom_highlights` :

```lua
-- config.lua
local default_options = {
  -- ...options existantes...
  custom_highlights = {},
}

-- init.lua
function M.load()
  -- ...chargement normal...
  
  -- Appliquer les customs
  for group, hl in pairs(_O.custom_highlights or {}) do
    M.highlight(group, hl)
  end
end
```

Utilisation :

```lua
require("anoukis").setup({
  custom_highlights = {
    MyCustomGroup = { fg = "#ff0000", bg = "#000000" },
    AnotherGroup = { link = "Comment" },
  }
})
```

---

## 📊 Priorité des fixes

| Problème | Sévérité | Facilité |
|----------|----------|----------|
| Typo `NorlmalNC` | 🔴 Haute | 🟢 Facile |
| FIXME non résolu | 🟡 Moyenne | 🟢 Facile |
| Dépendance `notify` | 🔴 Haute | 🟢 Facile |
| Cas bufferline | 🟢 Faible | 🟢 Facile |
| Annotations types | 🟡 Moyenne | 🟡 Modérée |
| Cohérence styles | 🟡 Moyenne | 🟢 Facile |
| `goto continue` | 🟢 Faible | 🟢 Facile |
| Validation options | 🟡 Moyenne | 🟢 Facile |
| Documentation | 🟡 Moyenne | 🟢 Facile |
| Tests | 🟢 Faible | 🟡 Modérée |
| Extensibilité | 🟡 Moyenne | 🟢 Facile |

---

## ✅ Checklist d'implémentation

- [ ] Corriger la typo `NorlmalNC`
- [ ] Résoudre ou supprimer le FIXME
- [ ] Gérer la dépendance `notify`
- [ ] Documenter le cas `bufferline`
- [ ] Ajouter les annotations LuaCATS
- [ ] Unifier la gestion des styles
- [ ] Remplacer `goto` par `if`
- [ ] Ajouter validation des options
- [ ] Améliorer le README (screenshots, guide)
- [ ] Ajouter des tests basiques
- [ ] Implémenter `custom_highlights`
