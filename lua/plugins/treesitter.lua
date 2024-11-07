return {
    -- Otros plugins...
    {
        'nvim-treesitter/nvim-treesitter',
        --build = ':TSUpdate',  -- Ejecuta el comando para actualizar los parsers al instalar
        config = function()
            require("config.treesitter").setup_treesitter()
        end,
    },
    {
        'nvim-treesitter/playground',
        cmd = 'TSPlaygroundToggle',
    },
    {'p00f/nvim-ts-rainbow'},
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
