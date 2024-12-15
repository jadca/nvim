local M = {}

function M.setup_treesitter()
    require('nvim-treesitter.configs').setup {
        ensure_installed = { "c_sharp","typescript","html","lua"},
        sync_install = false,
        auto_install = false, 
        --ignore_install = { "javascript" },
        highlight = {
            enable = false,
            disable = {"http","txt"},
            additional_vim_regex_highlighting = true, 
            disable = function(lang, buf)
                local max_filesize = 200 * 1024 -- 200 KB límite
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,
        },
        incremental_selection = {
            enable = false,
            keymaps = {
                init_selection = "gnn", -- set to `false` to disable one of the mappings
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },
        indent = {
            enable = false,
        },
        rainbow = {
            enable = false,
            -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            max_file_lines = nil, -- Do not enable for files with more than n lines, int
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
        },
        playground = {
            enable = false
        }
    }
end
return M
