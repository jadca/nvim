
local M = {}
function M.setup_masonlspconfig()
    require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls","ts_ls","omnisharp" },  -- Se asegura de que `lua-language-server` esté instalado
    })
end
return M
