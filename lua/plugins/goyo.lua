return  {
    "junegunn/goyo.vim",
    config = function()
        vim.g.goyo_width = 80  -- Cambia el ancho de Goyo
        vim.g.goyo_height = 0.9 -- Cambia la altura de Goyo
        -- Configuración opcional de Goyo
        vim.cmd([[
        autocmd FileType markdown setlocal spell
        ]])

        -- ~/.config/nvim/lua/plugins/ui.lua

        -- Restaurar la configuración de la interfaz al salir de Goyo
        vim.api.nvim_create_autocmd("User", {
            pattern = "GoyoEnter",
            callback = function()

            end,
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "GoyoLeave",
            callback = function()
                require('config.color-code').setup_color_code()
            end,
        })
    end
}
