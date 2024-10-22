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
                -- Ocultar la línea de estado cuando entras en Goyo
                vim.opt.laststatus = 0
                -- Otros ajustes que desees aplicar al entrar en Goyo
            end,
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "GoyoLeave",
            callback = function()
                -- Restaurar la línea de estado cuando sales de Goyo
                vim.opt.laststatus = 2
                -- Restaurar otras configuraciones si es necesario
                vim.cmd("wincmd =")  -- Restaurar el tamaño de las ventanas
            end,
        })
    end
}
