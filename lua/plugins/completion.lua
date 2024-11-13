return {
  {
      "hrsh7th/nvim-cmp",
      config = function()
          require("config.cmp").setup_cmp()  -- Llama a la configuración de LuaSnip
      end,
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
  { 
      "hrsh7th/cmp-nvim-lsp",
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
  {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
      config = function()
          require("config.luasnip").setup_luasnip()  -- Llama a la configuración de LuaSnip
      end,
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
  { 
      "saadparwaiz1/cmp_luasnip",
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
}
