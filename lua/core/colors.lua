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
