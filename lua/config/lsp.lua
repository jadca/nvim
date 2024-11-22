local M = {}

function M.setup_lspconfig()

    local lspconfig = require("lspconfig")

    ---- Configuración para Prettier
    --lspconfig.prettier.setup {
        --filetypes = { "typescript", "javascript", "html", "css" }, -- Lenguajes soportados
    --}
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
    local keyMapLsp = function(client, bufnr)
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'i', '<A-o>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        --vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.format{async=true}<CR>', opts)

        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>w=', '<cmd>lua vim.lsp.buf.formatting_sync(nil, 100)<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wL', '<cmd>lua vim.lsp.codelens.run()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>ws', '<cmd>Telescope lsp_document_symbols<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wS', '<cmd>Telescope lsp_workspace_symbols<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wq', '<cmd>lua vim.diagnostic.setqflist()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wa', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Tab>k', '<cmd>lua vim.diagnostic.goto_next({ popup_opts = { border = "single" }})<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Tab>j', '<cmd>lua vim.diagnostic.goto_prev({ popup_opts = { border = "single" }})<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Tab><Tab>', ':lua  vim.diagnostic.open_float(0, { scope = "line", border = "single" }) <CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>dd', '<cmd>Telescope diagnostics<CR>', opts)

        require('lsp-overloads').setup(client, {  
            ui = {
                border = "single",
                height = nil,    
                width = nil,   
                wrap = true,               
                wrap_at = nil,            
                max_width = nil,         
                max_height = nil,
                close_events = { "CursorMoved", "BufHidden", "InsertLeave" },
                focusable = true,
                focus = false,  
                offset_x = 0, 
                offset_y = 0,
                floating_window_above_cur_line = true,
                silent = true,
                highlight = {
                    italic = true,
                    bold = true,
                    fg = "#ffffff",
                }
            },
            keymaps = {
                next_signature = "<C-j>",
                previous_signature = "<C-k>",
                next_parameter = "<C-l>",
                previous_parameter = "<C-h>",
                close_signature = "<A-i>"
            },
            display_automatically = false,
            silent = true
        })
    end

    -- Definir handlers personalizados
    local custom_handlers = {
        -- Handler personalizado para las ventanas emergentes de hover
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
            -- Configurar el borde de la ventana emergente de hover
            border = "rounded",
        }),

        -- Handler personalizado para las ventanas emergentes de firma (signatureHelp)
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
            border = "rounded",
        }),
    }
    lspconfig.ts_ls.setup({
        on_attach = function(client, bufnr)
            keyMapLsp(client, bufnr)
            -- Configuraciones específicas para el cliente (opcional)
            if client.name == "ts_ls" then
                -- Ejemplo de cómo manejar el formato (puedes personalizar esto)
                --client.resolved_capabilities.document_formatting = false
            end
        end,
        handlers = custom_handlers
    })

    -- Configuración para C# usando OmniSharp
    lspconfig.omnisharp.setup({
        cmd = {"C:/omnisharp-win-x64/OmniSharp.exe"},
        on_attach = function(client, bufnr)
            keyMapLsp(client, bufnr)
            -- Configuraciones específicas para el cliente (opcional)
            if client.name == "omnisharp" then
                --client.resolved_capabilities.document_formatting = true -- Permitir el formateo de documentos
            end
        end,
        flags = {
            debounce_text_changes = 150,
        },
        root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj", ".git"),
        handlers = custom_handlers
    })
    --lspconfig.angularls.setup({
        --on_attach = function(client, bufnr)
            --keyMapLsp(client, bufnr)
            ---- Agrega atajos de teclado si es necesario
        --end,
        --capabilities = require("cmp_nvim_lsp").default_capabilities(),
        --root_dir = lspconfig.util.root_pattern("angular.json", ".git"),
    --})
    --lspconfig.html.setup({
        --filetypes = { "html"}, -- Asegúrate de incluir tus tipos de archivo
        --on_attach = function(client, bufnr)
            --keyMapLsp(client, bufnr)
        --end,
        --capabilities = require("cmp_nvim_lsp").default_capabilities(), -- Habilita autocompletado con nvim-cmp
    --})

end
return M
