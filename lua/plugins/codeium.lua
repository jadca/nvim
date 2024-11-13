return {
  {
    "Exafunction/codeium.vim",
    config = function()
        require("config.codeium").setup_codeium()
    end,
    lazy = true,
    ft = {"lua","javascript", "c_sharp", "typescript","cs" }
  }
}
