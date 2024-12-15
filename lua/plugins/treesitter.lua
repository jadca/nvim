return {
    -- Otros plugins...
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',  -- Ejecuta el comando para actualizar los parsers al instalar
        config = function()
            require("config.treesitter").setup_treesitter()
        end,
        lazy = true,  -- Indica a lazy.nvim que este plugin debe cargarse de forma diferida.
        ft = { "javascript", "typescript", "lua", "c_sharp", "html", "css" },  -- Especifica los tipos de archivos.
        --dependencies = {
            --{
                --"p00f/nvim-ts-rainbow",  -- Plugin de coloreo para paréntesis y similares.
                --lazy = true,  -- Carga diferida para nvim-ts-rainbow.
            --},
        --},
    },
    {
        'nvim-treesitter/playground',
        cmd = 'TSPlaygroundToggle',
    },
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            vim.cmd[[set termguicolors]]
            require 'colorizer'.setup({
                '*'
            },{ mode = 'background' })
        end,
    }
}
