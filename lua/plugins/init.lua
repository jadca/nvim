-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = "plugins.lsp", ft = {"lua","javascript", "c_sharp", "typescript" } },
        { import = "plugins.completion", ft = {"lua","javascript", "c_sharp", "typescript" } },
        { import = "plugins.git", lazy = false},
        { import = "plugins.goyo" , cmd = "Goyo"},
        { import = "plugins.overloads", ft = {"lua","javascript", "c_sharp", "typescript" } },
        { import = "plugins.lualine" , event = "VimEnter"},
        { import = "plugins.treesitter" , ft = {"lua","javascript", "c_sharp", "typescript" } },
        { import = "plugins.color" , lazy = false},
        { import = "plugins.telescope", event = "BufReadPost" },
        { import = "plugins.autopairs", ft = {"lua","javascript", "c_sharp", "typescript" } },
        { import = "plugins.rest" , cmd = "RestNvim" },
        { import = "plugins.codeium" ,ft = {"lua","javascript", "c_sharp", "typescript" }},
    },
    opts = {
        rocks = {
            enabled = false,  -- Desactiva `luarocks` si da errores
            hererocks = true  -- Activa `hererocks` si es necesario
        },
    },
    performance = {
        cache = {
            enabled = true,
        },
    },
    rocks = {
        root = vim.fn.stdpath("data") .. "/lazy-rocks",
        server = "https://nvim-neorocks.github.io/rocks-binaries/",
    },
})
