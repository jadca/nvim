return {
  {
      "neovim/nvim-lspconfig",
      config = function()
          require("config.lsp").setup_lspconfig()
      end
  },
  { 
      "williamboman/mason.nvim",
      config = function()
          require("config.mason").setup_mason()
      end
  },
  { 
      "williamboman/mason-lspconfig.nvim",
      config = function()
          require("config.mason-lspconfig").setup_masonlspconfig()
      end
  },
}
