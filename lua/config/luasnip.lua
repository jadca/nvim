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
  local ls = luasnip
  local s = ls.snippet
  local i = ls.insert_node
  local f = ls.function_node
  local t = ls.text_node

  ls.add_snippets("cs", {
      s("class", {
          -- Generar el namespace automáticamente
          f(function()
              local path = vim.fn.expand("%:p:h")
              local namespace = path:gsub("/", "."):gsub("^.+%.src%.", "") -- Ajusta el filtro según tu estructura de proyecto
              return "namespace " .. namespace
          end, {}),
          t({" {", "\t"}),  -- Agrega la apertura de la clase y una sangría
          t({"", "", "public class "}),  -- Reemplaza con text_node y sin \n
          f(function()
              return vim.fn.expand("%:t:r") -- Usa el nombre del archivo para la clase
          end, {}),
          t({" {", "\t"}),  -- Agrega la apertura de la clase y una sangría
          i(0),             -- Cursor final dentro de la clase
          t({"", "}"}),      -- Cierre de la clase
          t({"", "}"})      -- Cierre de la clase
      })
  })

  ls.add_snippets("cs", {
      s("interface", {
          -- Generar el namespace automáticamente
          f(function()
              local path = vim.fn.expand("%:p:h")
              local namespace = path:gsub("/", "."):gsub("^.+%.src%.", "") -- Ajusta el filtro según tu estructura de proyecto
              return "namespace " .. namespace
          end, {}),
          t({" {", "\t"}),  -- Agrega la apertura de la clase y una sangría
          t({"", "", "public interface "}),  -- Reemplaza con text_node y sin \n
          f(function()
              return vim.fn.expand("%:t:r") -- Usa el nombre del archivo para la clase
          end, {}),
          t({" {", "\t"}),  -- Agrega la apertura de la clase y una sangría
          i(0),             -- Cursor final dentro de la clase
          t({"", "}"}),      -- Cierre de la clase
          t({"", "}"})      -- Cierre de la clase
      })
  })

end
return M
