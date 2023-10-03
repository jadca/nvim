-----------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter


local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
nvim_treesitter.setup {
  ensure_installed = { "c_sharp","typescript","html"},
  sync_install = false,
  auto_install = false, 
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    --disable = {"lua","vim","javascript","typescript","html"},
    disable = {"lua","vim"},
    additional_vim_regex_highlighting =false, 
  },
 incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
	    enable = false,
		}
}

vim.cmd[[set termguicolors]]
require 'colorizer'.setup({
'*'
},{ mode = 'background' })

