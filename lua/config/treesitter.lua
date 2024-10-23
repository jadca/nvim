-- lua/config/treesitter.lua
require('nvim-treesitter.configs').setup {
ensure_installed = { "c_sharp","typescript","html"},
  sync_install = false,
  auto_install = false, 
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    --disable = {"lua","vim","javascript","typescript","html"},
    disable = {"lua","vim","http","txt"},
    additional_vim_regex_highlighting =true, 
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
		},
  rainbow = {
      enable = true,
      -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      -- colors = {}, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
    },
    playground = {
      enable = true
    }
}

vim.api.nvim_set_hl(0, '@namespace', {fg='#5288D9'})
vim.api.nvim_set_hl(0, '@parameter', {fg='#5234D8'})
vim.api.nvim_set_hl(0, '@operator', {fg='#C10DC1'})
vim.api.nvim_set_hl(0, '@keyword', {fg='#8e00fe'})
vim.api.nvim_set_hl(0, '@field', {fg='#9146A4'})
vim.api.nvim_set_hl(0, '@variable', {fg='#F9A2E8'})
vim.api.nvim_set_hl(0, '@variable.member', {fg='#0bb895'})
vim.api.nvim_set_hl(0, '@type', {fg='#68E02E'})
vim.api.nvim_set_hl(0, '@function', {fg='#8080FF'})
vim.api.nvim_set_hl(0, '@property', {fg='#0080C0'})
vim.api.nvim_set_hl(0, '@constructor', {fg='#FF8000'})
vim.api.nvim_set_hl(0, '@number', {fg='#008200'})
vim.api.nvim_set_hl(0, '@string', {fg='#FF0000'})
vim.api.nvim_set_hl(0, '@keyword.exception', {fg='#b600ff'})
vim.api.nvim_set_hl(0, '@keyword.conditional', {fg='#d0080b'})
vim.api.nvim_set_hl(0, '@punctuation.delimiter', {fg='#8e00fe'})
vim.api.nvim_set_hl(0, '@function.method', {fg='#790bb8'})
vim.api.nvim_set_hl(0, '@function.method.call', {fg='#627efd'})
vim.api.nvim_set_hl(0, '@keyword.return', {fg='#df00fe'})
vim.api.nvim_set_hl(0, '@keyword.operator', {fg='#c0fca4'})
vim.api.nvim_set_hl(0, '@keyword.import', {fg='#507ab6'})
vim.api.nvim_set_hl(0, '@keyword.export', {fg='#b68950'})
vim.api.nvim_set_hl(0, '@attribute', {fg='#ad2ba3'})
vim.api.nvim_set_hl(0, '@variable.parameter', {fg='#ff00f7'})
vim.api.nvim_set_hl(0, '@tag.attribute', {fg='#ff80f8'})

vim.cmd[[set termguicolors]]
require 'colorizer'.setup({
'*'
},{ mode = 'background' })
