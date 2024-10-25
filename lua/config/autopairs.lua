local M = {}

function M.setup_autopairs()
      require("nvim-autopairs").setup({
        check_ts = true
      })
end
return M
