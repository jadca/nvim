return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Buscar archivos" },
            { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Buscar en contenido de archivos" },
            { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buscar buffers abiertos" },
            { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Buscar ayuda" },
        },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("config.telescope").setup_telescope();
        end,
    }
}
