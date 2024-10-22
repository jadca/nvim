-- Configuración de Mason
require("mason").setup()

-- Configurar integración entre mason y lspconfig
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls","ts_ls","omnisharp" },  -- Se asegura de que `lua-language-server` esté instalado
})
