-- lua/config/treesitter.lua
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c_sharp","typescript","html"},
  sync_install = false,
  auto_install = false, 
  --ignore_install = { "javascript" },
  highlight = {
    enable = true,
    disable = {"vim","http","txt"},
    additional_vim_regex_highlighting = true, 
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
vim.api.nvim_set_hl(0, 'typescriptString', { fg = '#FF0000' }) 
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





vim.api.nvim_set_hl(0, 'typescriptBlock', { fg = '#800080' }) -- Color púrpura
vim.api.nvim_set_hl(0, 'typescriptIdentifierName', { fg = '#800080' }) -- Color púrpura
vim.api.nvim_set_hl(0, 'typescriptClassBlock', { fg = '#6C3483' }) -- Morado más intenso
vim.api.nvim_set_hl(0, 'typescriptOperator', { fg = '#5B2C6F' }) -- Morado aún más oscuro
vim.api.nvim_set_hl(0, 'typescriptAssign', { fg = '#2471A3' }) -- Celeste más oscuro
vim.api.nvim_set_hl(0, 'typescriptMember', { fg = '#9146FF' }) -- Color similar al púrpura de Twitch
vim.api.nvim_set_hl(0, 'typescriptParens', { fg = '#8B0000' }) -- Rojo palo
vim.api.nvim_set_hl(0, 'typescriptFuncCallArg', { fg = '#8B0000' }) -- Rojo palo
vim.api.nvim_set_hl(0, 'typescriptProp', { fg = '#D19A6A' }) -- Color pera
vim.api.nvim_set_hl(0, 'typescriptIdentifierName', { fg = '#FF6347' }) -- Color tomate
vim.api.nvim_set_hl(0, 'typescriptConditional', { fg = '#00CED1' }) -- Color agua (Aguamarina)
vim.api.nvim_set_hl(0, 'typescriptBoolean', { fg = '#FFD700' }) -- Color fuego (Naranja brillante)
vim.api.nvim_set_hl(0, 'typescriptObjectLiteral', { fg = '#B2E0D4' }) -- Color gaseosa
vim.api.nvim_set_hl(0, 'typescriptObjectLabel', { fg = '#E3FF00' }) -- Color limón
vim.api.nvim_set_hl(0, 'typescriptImport', { fg = '#FF69B4' }) -- Color chicle
vim.api.nvim_set_hl(0, 'typescriptBlock', { fg = '#A99C91' }) -- Color seresa
vim.api.nvim_set_hl(0, 'typescriptClassKeyword', { fg = '#9B59B6' }) -- Color púrpura brillante
vim.api.nvim_set_hl(0, 'typescriptClassName', { fg = '#00BFFF' }) -- Color azul eléctrico
vim.api.nvim_set_hl(0, 'typescriptTypeReference', { fg = '#00BFFF' }) -- Color celeste
vim.api.nvim_set_hl(0, 'typescriptPredefinedType', { fg = '#D2691E' }) -- Color chocolate
vim.api.nvim_set_hl(0, 'typescriptTypeBracket', { fg = '#32CD32' }) -- Color papagallo (verde brillante)
vim.api.nvim_set_hl(0, 'typescriptAccessibilityModifier', { fg = '#00FF00' }) -- Color brillante (verde vibrante)
vim.api.nvim_set_hl(0, 'typescriptDOMFormProp', { fg = '#009B77' }) -- Color lago
vim.api.nvim_set_hl(0, 'typescriptIdentifier', { fg = '#1877F2' }) -- Color Facebook
vim.api.nvim_set_hl(0, 'typescriptBinaryOp', { fg = '#9B3A6A' }) -- Color chicha de mora claro
