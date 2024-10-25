local M = {}
function M.setup_mason()
    require("mason").setup()
    --require("mason-lspconfig").setup({
        --ensure_installed = { "lua_ls","ts_ls","omnisharp" },  -- Se asegura de que `lua-language-server` esté instalado
    --})
end
return M
