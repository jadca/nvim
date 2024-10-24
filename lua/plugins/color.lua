-- lua/plugins/init.lua
return {
    {
        'ray-x/aurora',
        config = function()
            vim.cmd.colorscheme "aurora"
        end,
    },
}
