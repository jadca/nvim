-- lua/plugins/init.lua
return {
    -- Otros plugins...
    {
        'nvim-treesitter/nvim-treesitter',
        --build = ':TSUpdate',  -- Ejecuta el comando para actualizar los parsers al instalar
        config = function()
            require("config.treesitter")
        end,
    },
}
