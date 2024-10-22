local lspconfig = require("lspconfig")

-- Configuración del servidor Lua (lua-language-server)
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        -- Indicar que el runtime de Lua es Neovim
        version = "LuaJIT",
      },
      diagnostics = {
        -- Reconocer la variable global `vim` de Neovim
        globals = { "vim" },
      },
      workspace = {
        -- Agregar los archivos de Neovim a la biblioteca de trabajo
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,  -- Evita los mensajes relacionados con terceros
      },
      telemetry = {
        enable = false,  -- Desactivar telemetría
      },
    },
  },
})
lspconfig.ts_ls.setup({
  on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local opts = { noremap=true, silent=true }

    -- Mapeos de teclas
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

    -- Configuraciones específicas para el cliente (opcional)
    if client.name == "tsserver" then
      -- Ejemplo de cómo manejar el formato (puedes personalizar esto)
      client.resolved_capabilities.document_formatting = false
    end
  end,
})

-- Configuración para C# usando OmniSharp
lspconfig.omnisharp.setup({
    --cmd = {"C:/omnisharp-win-x64/OmniSharp.exe"},
  on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local opts = { noremap=true, silent=true }

    -- Mapeos de teclas
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

    -- Configuraciones específicas para el cliente (opcional)
    if client.name == "omnisharp" then
      --client.resolved_capabilities.document_formatting = true -- Permitir el formateo de documentos
    end
  end,
flags = {
        debounce_text_changes = 150,
    },
  root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj", ".git"),
})
