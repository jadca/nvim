local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Mapeos para LSP
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)

-- Mapeos para nvim-cmp
map("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
map("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })

map("n", ",e", ":Ex<cr><cr>", { expr = false })
map("n", "<leader>y", ":let @+=expand('%:t')<CR>", { expr = false })
map("n", "<leader>e", ":!start explorer %:p:h<CR>", { expr = false })
map("n", "<leader>v", ":e ~/AppData/Local/nvim/init.lua<CR>", opts)
map("n", "<leader>ch", ":lcd %:p:h<cr>", opts)

vim.keymap.set("n", "<leader>aa", ':!start cmd /C "cd /d E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Api && dotnet watch"<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>jj", ':!start cmd /C "cd /d E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Job && dotnet watch"<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>mm", ':!start cmd /C "cd /d E:\\Minedu\\CargaMasiva\\2.Codigo\\rrhh-negocio-comunes-cargamasiva-backend && dotnet watch"<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>aw", ':!start cmd /C "cd /d E:\\Minedu\\Ayni\\Front && ng serve"<CR>', { noremap = true, silent = true })

vim.keymap.set("n", ",m1", ':Ex E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Api<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",m2", ':Ex E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Application<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",m3", ':Ex E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Domain<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",m4", ':Ex E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Infraestructure<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",m5", ':Ex E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Job<CR>', { noremap = true, silent = true })

vim.keymap.set("n", ",j1", ':Ex E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.Api<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",j2", ':Ex E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.Application<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",j3", ':Ex E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.Infraestructure<CR>', { noremap = true, silent = true })


vim.keymap.set("n", ",ru", ':let @+ = "sigsda11@minedu.gob.pe"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",rc", ':let @+ = "S40502754*"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",vu", ':let @+ = "sigsda10"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",vc", ':let @+ = "123Alvaro"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",bc", ':let @+ = "http://localhost:4200/ayni/personal/procesospersonal/procesos/contratacion/consolidado/356"<CR><ESC>', { noremap = true, silent = true })

vim.keymap.set("n", ",bs", ':set signcolumn=yes:1<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",bh", ':set signcolumn=no<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",cl", ':%s/\\s\\+$//e<CR><ESC>', { noremap = true, silent = true })

vim.keymap.set("n", ",l", ':noh<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>b1", ':!dotnet build E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Api<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>b2", ':!dotnet build E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Application<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>b3", ':!dotnet build E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Domain<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>b4", ':!dotnet build E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Infraestructure<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>b5", ':!dotnet build E:\\Minedu\\Ayni\\Api\\2.Codigo\\Minedu.ProcesoContratacion.Job<CR>', { noremap = true, silent = true })


vim.keymap.set("n", "<leader>g", ":Goyo<CR>", { noremap = true, silent = true })
