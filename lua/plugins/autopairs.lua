return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("config.autopairs").setup_autopairs()
    end,
  }
}
