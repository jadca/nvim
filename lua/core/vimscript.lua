vim.cmd([[
    autocmd FileType html,css EmmetInstall
set expandtab " expand tabs
set shiftwidth=2 " spaces for autoindenting
set softtabstop=2 " remove a full pseudo-TAB when i press <BS>
set splitbelow splitright  
set foldmethod=manual "To avoid performance issues, I never fold anything  
set lazyredraw  
set ttyfast
set noshowmode " We don't need to know the insert/normal mode casue we have lualine
set ignorecase

let g:dbs = {
\  'dev': 'jdbc:sqlserver://10.200.8.108;user=user_ayni_personal_contratacion;password=user_ayni_personal_contratacion;databaseName=db_ayni_personal_contratacion;'
\ }
]])



vim.g.goyo_width = 200
local set = vim.opt
set.cursorline = true
set.number = true
vim.notify = require("notify")
vim.o.laststatus = 0
