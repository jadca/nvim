
-- Cargar las opciones generales
require("config.options")

-- Cargar las configuraciones de plugins (Lazy.nvim)
require("plugins")

-- Cargar los mapeos de teclas
--require("config.keymaps")

require("config.mason")

-- Cargar configuraciones de plugins adicionales
require("config.lsp")
require("config.cmp")
