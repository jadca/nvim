local M = {}

function M.setup_notify()

local notify = require("notify")
vim.notify = notify  -- Establecer nvim-notify como el método de notificación predeterminado

notify.setup({
  -- Opciones personalizables para ajustar el comportamiento de nvim-notify
  stages = "fade",  -- Efecto de animación de los mensajes
  timeout = 3000,   -- Tiempo de visualización de cada mensaje en milisegundos
  background_colour = "#000000",  -- Color de fondo
  fps = 30,         -- Velocidad de fotogramas de la animación
  icons = {         -- Iconos personalizados para cada nivel de mensaje
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})
end
return M
