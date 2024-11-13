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
        { import = "plugins.lsp" },
        { import = "plugins.completion" },
        { import = "plugins.git"},
        { import = "plugins.goyo" },
        { import = "plugins.overloads" },
        { import = "plugins.lualine" },
        { import = "plugins.treesitter"  },
        { import = "plugins.color" },
        { import = "plugins.telescope" },
        { import = "plugins.autopairs" },
        { import = "plugins.rest"  },
        { import = "plugins.codeium" },
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
