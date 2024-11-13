return {
    { 
        'nvim-lualine/lualine.nvim',
        dependencies  = { 'nvim-tree/nvim-web-devicons'},
        config = function()
            require("config.lualine").setup_lualine()
        end,
        lazy = true,
        ft = {"lua","javascript", "c_sharp", "typescript","cs" }
    }
}
