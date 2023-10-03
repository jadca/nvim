
local border = {
{"╭", "FloatBorder"},
{"─", "FloatBorder"},
{"╮", "FloatBorder"},
{"│", "FloatBorder"},
{"╯", "FloatBorder"},
{"─", "FloatBorder"},
{"╰", "FloatBorder"},
{"│", "FloatBorder"},

}
vim.diagnostic.config({
 --virtual_text = false,
 virtual_text = true,
  virtual_text = {
   ---- source = "always",  -- Or "if_many"
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always",  -- Or "if_many"
    border = border
  },
})

vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]
-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	local opts = { noremap=true, silent=true }
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
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
            floating_window_above_cur_line = true
          },
          keymaps = {
            next_signature = "<C-j>",
            previous_signature = "<C-k>",
            next_parameter = "<C-l>",
            previous_parameter = "<C-h>",
            close_signature = "<A-s>"
          },
          display_automatically = false
        })
end
local pid = vim.fn.getpid()
--local omnisharp_bin = "C://Users//MSI//AppData//Local//omnisharp-vim//omnisharp-roslyn//OmniSharp.exe"
local omnisharp_bin = "C://Users//MSI//AppData//Local//nvim-data//lsp_servers//omnisharp//omnisharp//OmniSharp.exe"
local nvim_lsp = require'lspconfig'
--require'lspconfig'.omnisharp.setup
--{
	--handlers = handlers,
	--capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
	--on_attach = on_attach,
	----on_attach = function(_, bufnr)
		----vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
		----local opts = { noremap=true, silent=true }
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
----
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>w=', '<cmd>lua vim.lsp.buf.formatting_sync(nil, 100)<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wL', '<cmd>lua vim.lsp.codelens.run()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>ws', '<cmd>Telescope lsp_document_symbols<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wS', '<cmd>Telescope lsp_workspace_symbols<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wq', '<cmd>lua vim.diagnostic.setqflist()<CR>', opts)
	----end,
	--cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
	----root_dir = nvim_lsp.util.root_pattern("*.csproj","*.sln"),
	--root_dir = nvim_lsp.util.root_pattern("*.sln"),
	--filetypes = {"cs"},
	--on_new_config = function(new_config, new_root_dir)
	   --new_config.root_dir = new_root_dir
	--end
--}

local tsserver_bin = "C:\\Users\\MSI\\AppData\\Roaming\\npm\\typescript-language-server.cmd";
--require'lspconfig'.tsserver.setup{
--cmd = {tsserver_bin, 'typescript-language-server', '--stdio'};
  --root_dir = nvim_lsp.util.root_pattern("package.json");
  --on_attach = on_attach,
  ----on_attach = function(_, bufnr)
		----local opts = { noremap=true, silent=true }
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
----
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>w=', '<cmd>lua vim.lsp.buf.formatting_sync(nil, 100)<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wL', '<cmd>lua vim.lsp.codelens.run()<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>ws', '<cmd>Telescope lsp_document_symbols<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wS', '<cmd>Telescope lsp_workspace_symbols<CR>', opts)
		----vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>wq', '<cmd>lua vim.diagnostic.setqflist()<CR>', opts)
	----end
--}
 
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    if server.name == 'tsserver' then
	opts.cmd = {tsserver_bin, 'typescript-language-server', '--stdio'};
	opts.root_dir = nvim_lsp.util.root_pattern("package.json");
	opts.on_attach = on_attach;
	opts.filetypes = {"typescript"};
	opts.handlers = handlers;
--	print('tsserver')
    end

    if server.name == 'omnisharp' then
	--opts.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities());
	opts.handlers = handlers;
	opts.on_attach = on_attach;
	--opts.cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
       ---- opts.root_dir = nvim_lsp.util.root_pattern("*.csproj","*.sln");
	--opts.root_dir = nvim_lsp.util.root_pattern("*.sln");
	--opts.filetypes = {"cs"};
	--opts.on_new_config = function(new_config, new_root_dir)
	   --new_config.root_dir = new_root_dir;
	   --print(new_root_dir)
	--end
	--print('omnisharp')
    end

    if server.name == 'angularls' then
	opts.on_attach = on_attach;
	opts.filetypes = {"html"};
	opts.handlers = handlers;
	opts.root_dir = nvim_lsp.util.root_pattern("package.json");
--	print('angularls')
    end
    if server.name == 'emmet_ls' then
	local capabilities = vim.lsp.protocol.make_client_capabilities();
	capabilities.textDocument.completion.completionItem.snippetSupport = true;
	 opts.capabilities = capabilities;
	opts.handlers = handlers;
	 opts.filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' };
--	print('emmet_ls')
    end
    if server.name == 'kotlin_language_server' then
      local capabilities = vim.lsp.protocol.make_client_capabilities();
      opts.on_attach = on_attach;
      opts.capabilities = capabilities;
      opts.filetypes = {"kotlin"};
      opts.handlers = handlers;
      opts.root_dir = nvim_lsp.util.root_pattern("settings.gradle");
      opts.cmd = {'C://Users/MSI/AppData/Local/nvim-data/lsp_servers/kotlin/server/bin/kotlin-language-server.bat'};
      opts.settings = {
        kotlin = {
          compiler = {
            jvm = {
              target = "1.8";
            }
          };
        };
      }
      --print(nvim_lsp.util.root_pattern("settings.gradle"))
      --print(server.name)
    end
    server:setup(opts)
    vim.cmd[[do user LspAttachBuffers]]
end)
