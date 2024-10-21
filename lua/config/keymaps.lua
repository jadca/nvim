local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Mapeos para LSP
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)

-- Mapeos para nvim-cmp
map("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
map("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
