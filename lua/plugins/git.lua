return {
  -- Integración de Git
  {
      "tpope/vim-fugitive",
      cmd = { "G", "Git", "Gdiffsplit" }
  },
  -- Visualización de cambios en el buffer (GitGutter)
  {
      "lewis6991/gitsigns.nvim",
      lazy = true,
      ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  },
}
