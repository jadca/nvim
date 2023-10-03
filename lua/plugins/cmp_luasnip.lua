local lspkind = require 'lspkind'
lspkind.init({
        mode = 'symbol_text',
	preset = 'codicons',
})

-- luasnip setup
require("luasnip.loaders.from_vscode").load({ include = { "cs","js","html", "typescript","scss" } })
local luasnip = require 'luasnip'
local cmp = require 'cmp'
cmp.setup {
    formatting = {
	format = function(entry, vim_item)
	   vim_item.kind = lspkind.presets.default[vim_item.kind]
	   vim_item.menu = ({
		   luasnip = "[Snip]",
		   nvim_lsp = "[LSP]",
		   look = "[Dict]",
		   buffer = "[Buffer]",
	   })[entry.source.name]
           vim_item.kind, vim_item.menu = vim_item.menu, vim_item.kind
           return vim_item
	end
    },
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
	   --   luasnip.lsp_expand(args.body)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    	mapping = {
		    ['<C-p>'] = cmp.mapping.select_prev_item(),
		    ['<C-n>'] = cmp.mapping.select_next_item(),
		    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
		    ['<C-f>'] = cmp.mapping.scroll_docs(4),
		    ['<C-Space>'] = cmp.mapping.complete(),
		    ['<C-e>'] = cmp.mapping.close(),
		    ['<CR>'] = cmp.mapping.confirm {
		      behavior = cmp.ConfirmBehavior.Replace,
		      select = true,
		    },
		    ['<Tab>'] = function(fallback)
		      if cmp.visible() then
			cmp.select_next_item()
		      elseif luasnip.expand_or_jumpable() then
			luasnip.expand_or_jump()
		      else
			fallback()
		      end
		    end,
		    ['<S-Tab>'] = function(fallback)
		      if cmp.visible() then
			cmp.select_prev_item()
		      elseif luasnip.jumpable(-1) then
			luasnip.jump(-1)
		      else
			fallback()
		      end
		    end,
	},
 	sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'nvim_lsp_signature_help' },
                    { name = 'vim-dadbod-completio' }
		  }
}
cmp.setup.filetype({ "sql", "mysql", "plsql" }, {
  sources = cmp.config.sources({
    { name = "vim-dadbod-completion" },
  }, {
    { name = "buffer" },
  }),
})
