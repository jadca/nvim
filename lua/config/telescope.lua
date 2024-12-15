local M = {}

function M.setup_telescope()
    require("telescope").setup({
        defaults = {
--layout_strategy = "vertical", -- Usa una estrategia flexible para adaptarse al espacio.
        --layout_config = {
            --vertical = {
                --prompt_position = "top", -- Prompt siempre arriba.
                --preview_cutoff = 0,      -- Siempre muestra el preview.
                --mirror = false,          -- Preview debajo por defecto.
            --},
        --},
            
            path_display = { "tail" },
            prompt_prefix = "🔍 ",
            selection_caret = "➤ ",
            sorting_strategy = "ascending",
            layout_config = {
                horizontal = {
                    preview_width = 0.5,
                },
            },
            file_ignore_patterns = { "node_modules", ".git/" },
        },
pickers = {
        lsp_references = {
            layout_strategy = "vertical",
            layout_config = {
                prompt_position = "top",
                preview_cutoff = 0,      -- Preview activo.
                mirror = true,           -- Mueve el preview debajo de LSP references.
                height = 0.99, -- 100% del alto de la ventana.
                width = 0.99,  -- 100% del ancho de la ventana.
            },
        },
    },

    })
end
return M
