return {
    --{
        --'rest-nvim/rest.nvim',
        --dependencies = { 'nvim-lua/plenary.nvim' },  -- Asegúrate de que las dependencias están aquí
        --config = function()
            --require('rest-nvim').setup()
        --end,
    --}
     {
        'mistweaverco/kulala.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('kulala').setup()
        end
    }
}
