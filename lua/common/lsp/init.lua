-- LSP configuration

-- install servers and tools
require "common.lsp.mason"

local lspconfig = require "lspconfig"
local servers = require "common.lsp.servers"


for server, setup in pairs(servers) do
    lspconfig[server].setup(setup())
end

require "common.lsp.null-ls"
