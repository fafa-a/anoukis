# Axes d'amélioration - Performance

Ce document liste tous les points d'amélioration de performance identifiés pour le colorscheme Anoukis.

## 🐌 Problèmes identifiés

### 1. `io.popen` bloquant au chargement

**Fichier** : `lua/anoukis/init.lua:9`

```lua
local function get_plugin_filenames(directory)
  local filenames = {}
  for file in io.popen("ls -1 " .. directory):lines() do
    -- ...
  end
  return filenames
end
```

**Problème** : `io.popen` lance un processus externe (shell) qui est bloquant et lent. Cela ralentit le chargement du colorscheme à chaque démarrage.

**Solution** : Utiliser `vim.fs.dir()` (Nvim 0.8+) qui est natif, non-bloquant et beaucoup plus rapide :

```lua
local function get_plugin_filenames(directory)
  local filenames = {}
  for name, type in vim.fs.dir(directory) do
    if type == "file" and name:match("%.lua$") then
      table.insert(filenames, name:gsub("%.lua$", ""))
    end
  end
  return filenames
end
```

---

### 2. Chargement inconditionnel de tous les plugins

**Fichier** : `lua/anoukis/init.lua:75-84`

```lua
for _, name in ipairs(plugin_names) do
  if name == "bufferline" then
    goto continue
  end

  local plugin = require("anoukis.plugins." .. name)
  local pl = plugin.setup()
  M.syntax(pl.highlights)
  ::continue::
end
```

**Problème** : 25+ fichiers de plugins sont chargés et leurs highlights appliqués, même si l'utilisateur n'a pas installé ces plugins. C'est du travail inutile.

**Solution** : Lazy-loading conditionnel - ne charger que si le plugin est installé :

```lua
for _, name in ipairs(plugin_names) do
  -- Vérifier si le plugin est disponible avant de charger ses highlights
  local has_plugin, _ = pcall(require, name)
  if has_plugin then
    local ok, plugin = pcall(require, "anoukis.plugins." .. name)
    if ok then
      local pl = plugin.setup()
      M.syntax(pl.highlights)
    end
  end
end
```

---

### 3. Auto-configuration forcée de lualine

**Fichier** : `lua/anoukis/init.lua:86-92`

```lua
if pcall(require, "lualine") then
  require("lualine").setup({
    options = {
      theme = require("lualine.themes.anoukis"),
    },
  })
end
```

**Problème** : Le colorscheme force la configuration de lualine, ce qui peut écraser la configuration existante de l'utilisateur. C'est intrusif et inattendu.

**Solution** : Supprimer cette section et documenter comment l'utiliser manuellement :

```lua
-- Dans la documentation README :
-- Pour utiliser avec lualine :
require("lualine").setup({
  options = { theme = "anoukis" }
})
```

---

### 4. Variables globales polluantes

**Fichiers** : `lua/anoukis/init.lua:53-55, 98-100`

```lua
_P = require("palette.colors")
_C = require("palette.base").colors
_S = require("palette.base").style
_O = vim.tbl_deep_extend("force", {}, default_options, options)
_VARIANT = _O.variants or default_options.variants
_COLOR_BACKGROUND = _O.color_background or default_options.color_background
```

**Problème** : Utilisation de variables globales (`_P`, `_C`, `_S`, `_O`, `_VARIANT`, `_COLOR_BACKGROUND`) qui polluent l'espace global Lua et peuvent causer des conflits avec d'autres plugins.

**Solution** : Encapsuler dans un module ou utiliser une table locale :

```lua
-- Créer un module d'état
local state = {}

function M.load()
  state.palette = require("palette.colors")
  state.colors = require("palette.base").colors
  state.style = require("palette.base").style
  -- Access via state.palette instead of _P
end

-- Ou exposer via métatable pour compatibilité
local _G_mt = {
  __index = function(t, k)
    if k:match("^_[A-Z]") then
      return rawget(t, k)
    end
  end
}
```

---

### 5. Calculs au runtime inutiles

**Fichier** : `lua/palette/base.lua:1-13`

```lua
local success, result = pcall(function()
  return require("anoukis.util").darken_color(_P[_VARIANT .. 25], 0.95)
end)

if not success then
  vim.notify = require("notify")
  vim.notify("An error occurred: " .. result, vim.log.levels.ERROR, { title = "Anoukis setup" })
end

local cursor_line_bg
if success then
  cursor_line_bg = result
end
```

**Problème** : Le calcul de couleur est fait à chaque chargement. Si ça échoue, on tente d'utiliser `notify` qui peut ne pas être installé.

**Solution** : 
- Précalculer les valeurs au build ou utiliser un cache
- Fallback silencieux sans dépendance externe
- Ne pas supposer que `notify` existe

```lua
local cursor_line_bg = _P[_VARIANT .. 50] -- Valeur par défaut sans calcul

-- Calcul optionnel avec fallback
local ok, util = pcall(require, "anoukis.util")
if ok then
  local success, result = pcall(util.darken_color, _P[_VARIANT .. 25], 0.95)
  if success then
    cursor_line_bg = result
  end
end
```

---

### 6. Nombreux appels individuels `nvim_set_hl`

**Fichier** : `lua/anoukis/init.lua:37, 41-43`

```lua
function M.highlight(group, hl)
  -- ...traitement...
  vim.api.nvim_set_hl(0, group, hl)  -- 1 appel par highlight
end

function M.syntax(stx)
  for group, colors in pairs(stx) do
    M.highlight(group, colors)  -- Appel pour chaque groupe
  end
end
```

**Problème** : Des centaines d'appels individuels à `vim.api.nvim_set_hl`. Chaque appel API a un overhead.

**Solution** : Utiliser `vim.api.nvim_set_hl` avec une table batch si possible, ou optimiser le nombre d'appels :

```lua
-- Actuellement il n'y a pas de batch API native,
-- mais on peut réduire les appels en fusionnant les highlights similaires
-- ou en utilisant des "link" au lieu de définitions complètes quand possible
```

---

## 📊 Impact estimé

| Problème | Impact | Facilité de fix |
|----------|--------|-----------------|
| `io.popen` | 🔴 Haut | 🟢 Facile |
| Chargement plugins | 🔴 Haut | 🟢 Facile |
| Config lualine | 🟡 Moyen | 🟢 Facile |
| Variables globales | 🟡 Moyen | 🟡 Modéré |
| Calculs runtime | 🟢 Faible | 🟢 Facile |
| Appels API | 🟡 Moyen | 🟡 Modéré |

---

## ✅ Checklist d'implémentation

- [ ] Remplacer `io.popen` par `vim.fs.dir()`
- [ ] Ajouter lazy-loading conditionnel pour les plugins
- [ ] Supprimer l'auto-config lualine
- [ ] Encapsuler les variables globales
- [ ] Optimiser les calculs de couleur
- [ ] Réduire les appels API si possible
