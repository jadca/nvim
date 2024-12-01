return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader>lf", "<cmd>Telescope find_files<CR>", desc = "Buscar archivos" },
            { "<leader>lg", "<cmd>Telescope live_grep<CR>", desc = "Buscar en contenido de archivos" },
            { "<leader>lb", "<cmd>Telescope buffers<CR>", desc = "Buscar buffers abiertos" },
            { "<leader>lh", "<cmd>Telescope help_tags<CR>", desc = "Buscar ayuda" },
            { "<leader>lr", "<cmd>Telescope lsp_references<CR>", desc = "Buscar referencias" },
        },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("config.telescope").setup_telescope();
        end,
    }
}
