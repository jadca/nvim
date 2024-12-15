return  {
    "junegunn/goyo.vim",
    lazy = true,               -- Activar la carga diferida
    cmd = "Goyo",              -- Cargar Goyo solo cuando se ejecute el comando :Goyo
    config = function()
        vim.g.goyo_width = 140              -- Ajusta el ancho de la ventana
        vim.g.goyo_height = 100             -- Configura el alto como porcentaje
        vim.api.nvim_create_autocmd("User", {
            pattern = "GoyoEnter",
            callback = function()
                vim.cmd("setlocal sidescrolloff=8") -- Desplazamiento lateral cómodo
                vim.g.goyo_width = 140              -- Ajusta el ancho de la ventana
                vim.g.goyo_height = 100             -- Configura el alto como porcentaje
                vim.opt.relativenumber = true  -- Activa la numeración relativa
                vim.opt.number = true           -- Mostrar números de línea
            end,
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "GoyoLeave",
            callback = function()
                vim.cmd("setlocal sidescrolloff=0") -- Restaura el desplazamiento por defecto
                require('config.color-code').setup_color_code()
            end,
        })
    end
}
