return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { ",tf", "<cmd>Telescope find_files<CR>", desc = "Buscar archivos" },
            { ",tg", "<cmd>Telescope live_grep<CR>", desc = "Buscar en contenido de archivos" },
            { ",tb", "<cmd>Telescope buffers<CR>", desc = "Buscar buffers abiertos" },
            { ",th", "<cmd>Telescope help_tags<CR>", desc = "Buscar ayuda" },
            { ",tr", "<cmd>Telescope lsp_references<CR>", desc = "Buscar referencias" },
        },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("config.telescope").setup_telescope();
        end,
    }
}
