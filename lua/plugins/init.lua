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
    { import = "plugins.lsp" },       -- Plugins relacionados con LSP
    { import = "plugins.completion" },-- Plugins de autocompletado
    { import = "plugins.git" },       -- Plugins relacionados con Git
    { import = "plugins.goyo" },       
    { import = "plugins.overloads" },
    { import = "plugins.lualine" },
    { import = "plugins.color" },
    { import = "plugins.treesitter" }
 }
})
