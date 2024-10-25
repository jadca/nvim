local M = {}

-- Configuración de LuaSnip
function M.setup_luasnip()
  local luasnip = require("luasnip")

  -- Configuración general de LuaSnip, como habilitar tipos de snippets, keybindings, etc.
  luasnip.config.set_config({
    history = true,
    updateevents = "TextChanged,TextChangedI",
  })

  -- Cargar snippets de `friendly-snippets` (opcional)
  --require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip.loaders.from_vscode").load({ include = { "cs","js","html", "typescript","scss" } })
end

return M
