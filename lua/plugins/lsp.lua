return {
  {
      "neovim/nvim-lspconfig",
      config = function()
          require("config.lsp").setup_lspconfig()
      end, 
      lazy = true,
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
  { 
      "williamboman/mason.nvim",
      config = function()
          require("config.mason").setup_mason()
      end,
      lazy = true,
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
  { 
      "williamboman/mason-lspconfig.nvim",
      config = function()
          require("config.mason-lspconfig").setup_masonlspconfig()
      end,
      lazy = true,
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
}
