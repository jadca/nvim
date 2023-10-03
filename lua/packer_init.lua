-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README:
-- neovim-lua/README.md
-- https://github.com/brainfucksec/neovim-lua#readme


-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end


-- Install plugins
return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
      }
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  use 'saadparwaiz1/cmp_luasnip' 
  use 'L3MON4D3/LuaSnip' 
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'onsails/lspkind-nvim'
--use 'morhetz/gruvbox'
  use 'folke/tokyonight.nvim'
  use 'shaunsingh/moonlight.nvim'
  use 'marko-cerovac/material.nvim'
  use 'ray-x/aurora'
  use { "catppuccin/nvim", as = "catppuccin" }
--use 'sainnhe/sonokai'
  --use 'EdenEast/nightfox.nvim' -- Packer    
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/nvim-compe'
  use 'junegunn/goyo.vim'
  use 'mattn/emmet-vim'
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use {
  'kristijanhusak/vim-dadbod-ui',
  requires = { 
    'tpope/vim-dadbod',
    'kristijanhusak/vim-dadbod-completion',
    'tpope/vim-dotenv'
  }
}

use {
  'ThePrimeagen/harpoon',
  requires = { 
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim'
  }
}

--use({
  --"mfussenegger/nvim-jdtls",
  --config = function()
    --require("plugin.jdtls.config").attach()
  --end,
  --module = "jdtls",
--})

--use {
            --'mfussenegger/nvim-jdtls',
            --disable = true,
            --ft = "java"
        --}
use 'puremourning/vimspector'
use {
    'crispgm/nvim-tabline',
    config = function()
        require('tabline').setup({})
    end,
}
use { 'Issafalcon/lsp-overloads.nvim'}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
 use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
use { 'norcalli/nvim-colorizer.lua'}
use { 'hsanson/vim-android'}
use {
  'Exafunction/codeium.vim',
  config = function ()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    vim.keymap.set('i', '<C-h>', function() return vim.fn['codeium#Complete']() end, { expr = true })
  end
}
use 'rcarriga/nvim-notify'
use "lukas-reineke/indent-blankline.nvim"
use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}

--use {
  --'VonHeikemen/fine-cmdline.nvim',
  --requires = {
    --{'MunifTanjim/nui.nvim'}
  --},
  --config = function ()
    --vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
  --end
--}
use {
  "rest-nvim/rest.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      -- Open request results in a horizontal split
      result_split_horizontal = false,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = false,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = true,
      -- Encode URL before making request
      encode_url = true,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        -- show the generated curl command in case you want to launch
        -- the same request via the terminal (can be verbose)
        show_curl_command = false,
        show_http_info = true,
        show_headers = true,
        -- executables or functions for formatting response body [optional]
        -- set them to false if you want to disable them
        formatters = {
          json = "jq",
          html = function(body)
            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
          end
        },
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
    })
  end
}
--use {
  --"NTBBloodbath/rest.nvim",
  --requires = { "nvim-lua/plenary.nvim" }
--}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
