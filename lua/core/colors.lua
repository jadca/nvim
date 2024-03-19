--vim.cmd('colorscheme gruvbox')
--vim.cmd[[colorscheme tokyonight]]
vim.cmd[[colorscheme aurora]]

--vim.cmd[[colorscheme sonokai]]
--vim.g.sonokai_style = 'default'

--vim.cmd[[colorscheme nordfox]]

local lspkind = require 'lspkind'
lspkind.init({
        mode = 'symbol_text',
	preset = 'codicons',
})

local border = {
{"╭", "FloatBorder"},
{"─", "FloatBorder"},
{"╮", "FloatBorder"},
{"│", "FloatBorder"},
{"╯", "FloatBorder"},
{"─", "FloatBorder"},
{"╰", "FloatBorder"},
{"│", "FloatBorder"},

}
vim.diagnostic.config({
 virtual_text = false,
  --virtual_text = {
   ---- source = "always",  -- Or "if_many"
    --prefix = '●', -- Could be '■', '▎', 'x'
  --},
  severity_sort = true,
  float = {
    source = "always",  -- Or "if_many"
    border = border
  },
})

vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]
-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
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
