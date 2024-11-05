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
        { import = "plugins.lsp" },
        { import = "plugins.completion" },
        { import = "plugins.git" },
        { import = "plugins.goyo" },
        { import = "plugins.overloads" },
        { import = "plugins.lualine" },
        { import = "plugins.treesitter" },
        { import = "plugins.color" },
        { import = "plugins.telescope" },
        { import = "plugins.autopairs" },
        { import = "plugins.rest" },
        { import = "plugins.codeium" },
    }
})
