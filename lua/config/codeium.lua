local M = {}
function M.setup_codeium()
    vim.keymap.set('i', '<C-g>', function () 
        vim.b.is_codeium_suggestion = true;
        return vim.fn['codeium#Accept']() 
    end, { expr = true })
    vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    vim.keymap.set('i', '<C-h>', function() return vim.fn['codeium#Complete']() end, { expr = true })
end
return M
