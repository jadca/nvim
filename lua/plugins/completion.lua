return {
  {
      "hrsh7th/nvim-cmp",
      config = function()
          require("config.cmp").setup_cmp()  -- Llama a la configuración de LuaSnip
      end
  },
  { 
      "hrsh7th/cmp-nvim-lsp",
  },
  {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
      config = function()
          require("config.luasnip").setup_luasnip()  -- Llama a la configuración de LuaSnip
      end,
  },
  { 
      "saadparwaiz1/cmp_luasnip",
  },
}
