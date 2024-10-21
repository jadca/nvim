local lspconfig = require("lspconfig")

-- Configuración del servidor Lua (lua-language-server)
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        -- Indicar que el runtime de Lua es Neovim
        version = "LuaJIT",
      },
      diagnostics = {
        -- Reconocer la variable global `vim` de Neovim
        globals = { "vim" },
      },
      workspace = {
        -- Agregar los archivos de Neovim a la biblioteca de trabajo
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,  -- Evita los mensajes relacionados con terceros
      },
      telemetry = {
        enable = false,  -- Desactivar telemetría
      },
    },
  },
})
