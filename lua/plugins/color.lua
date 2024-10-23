-- lua/plugins/init.lua
return {
    -- Otros plugins...
    {
        'ray-x/aurora',
        config = function()
            vim.g.aurora_italic = 1  -- Habilitar itálicas en el tema (opcional)
            vim.g.aurora_transparent = 1  -- Hacer transparente el fondo (opcional)
            vim.cmd[[colorscheme aurora]] -- Establece aurora como el esquema de colores predeterminado
        end
    },
}
