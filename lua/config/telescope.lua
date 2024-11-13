local M = {}

function M.setup_telescope()
    require("telescope").setup({
        defaults = {
            path_display = { "tail" },
            prompt_prefix = "🔍 ",
            selection_caret = "➤ ",
            sorting_strategy = "ascending",
            layout_config = {
                horizontal = {
                    preview_width = 0.5,
                },
            },
            file_ignore_patterns = { "node_modules", ".git/" },
        },
    })


--vim.keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })


end
return M
