-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
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
        { import = "plugins.notify" }
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
