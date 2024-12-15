local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


map("n", "<leader>y", ":let @+=expand('%:t')<CR>", { expr = false })
map("n", "<leader>e", ":!start explorer %:p:h<CR>", { expr = false })
map("n", "<leader>v", ":e ~/AppData/Local/nvim/init.lua<CR>", opts)
map("n", "<leader>ch", ":lcd %:p:h<cr>", opts)




vim.keymap.set("n", "<leader>w", ':write<CR><ESC>', { noremap = true, silent = true })

vim.keymap.set("n", ",ru", ':let @+ = "sigsda11@minedu.gob.pe"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",rc", ':let @+ = "S40502754*"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",vu", ':let @+ = "sigsda10"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",vc", ':let @+ = "456Alvaro"<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",bc", ':let @+ = "http://localhost:4200/ayni/personal/procesospersonal/procesos/contratacion/consolidado/356"<CR><ESC>', { noremap = true, silent = true })

vim.keymap.set("n", ",bs", ':set signcolumn=yes:1<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",bh", ':set signcolumn=no<CR><ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",cl", ':%s/\\s\\+$//e<CR><ESC>', { noremap = true, silent = true })

vim.keymap.set("n", ",l", ':noh<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",y", 'viwy<ESC>', { noremap = true, silent = true })
vim.keymap.set("n", ",p", 'viw"0p<ESC>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ba", ':new | r !dotnet build E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Api<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bs", ':new | r !dotnet build E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Application<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ':new | r !dotnet build E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Domain<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bf", ':new | r !dotnet build E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Infraestructure<CR>', { noremap = true, silent = true })

vim.keymap.set("n", ",ca", ':Ex E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Api<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",cs", ':Ex E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Application<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",cd", ':Ex E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Domain<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",cf", ':Ex E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Infraestructure<CR>', { noremap = true, silent = true })

vim.keymap.set("n", ",ja", ':Ex E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.Api<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",js", ':Ex E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.Application<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",jd", ':Ex E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.Infraestructure<CR>', { noremap = true, silent = true })

vim.keymap.set("n", ",ra", ':Ex E:\\Minedu\\Ayni\\Renovacion\\src\\Minedu.Ayni.Staff.Renewals.Api<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",rs", ':Ex E:\\Minedu\\Ayni\\Renovacion\\src\\Minedu.Ayni.Staff.Renewals.Application<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",rd", ':Ex E:\\Minedu\\Ayni\\Renovacion\\src\\Minedu.Ayni.Staff.Renewals.Domain<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",rf", ':Ex E:\\Minedu\\Ayni\\Renovacion\\src\\Minedu.Ayni.Staff.Renewals.Infrastructure<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>r1", ':new | r !dotnet build E:\\Minedu\\Ayni\\Renovacion\\src\\Minedu.Ayni.Staff.Renewals.Api<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>aa", ':!start cmd /C "cd /d E:\\Minedu\\Ayni\\Contratacion\\src\\Minedu.Ayni.Staff.Recruitments.Api && dotnet watch"<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>jj", ':!start cmd /C "cd /d E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.Api && dotnet watch"<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>mm", ':!start cmd /C "cd /d E:\\Minedu\\CargaMasiva\\2.Codigo\\rrhh-negocio-comunes-cargamasiva-backend && dotnet watch"<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>aw", ':!start cmd /C "cd /d E:\\Minedu\\Ayni\\Front && ng serve --configuration=local"<CR>', { noremap = true, silent = true })

vim.keymap.set('n', ',mw', ':Ex E:\\Minedu\\Ayni\\Front\\src\\app\\main\\apps\\procesos<CR>', { noremap = true, silent = true })

vim.keymap.set("n", ",wo", ':!"C:\\Program Files\\Microsoft Visual Studio\\2022\\Preview\\Common7\\IDE\\devenv.exe" "E:\\Minedu\\Ayni\\Front"<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",co", ':!start E:\\Minedu\\Ayni\\Contratacion\\src\\msa-as-recruitments.sln<cr>', { noremap = true, silent = true })
vim.keymap.set("n", ",jo", ':!start E:\\Minedu\\Ayni\\job-as-recruitments\\Minedu.Ayni.Personal.Contratacion.sln<CR>', { noremap = true, silent = true })
vim.keymap.set("n", ",ro", ':!start E:\\Minedu\\Ayni\\Renovacion\\src\\msa-as-renewals.sln<CR>', { noremap = true, silent = true })

vim.keymap.set("n", ",go", ":Goyo<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "{", "{zz", { noremap = true, silent = true })
vim.keymap.set("n", "}", "}zz", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true, silent = true })
vim.keymap.set("n", "n", "nzz", { noremap = true, silent = true })
vim.keymap.set("n", "G", "Gzz", { noremap = true, silent = true })
vim.keymap.set("n", "gg", "ggzz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-i>", "<C-i>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-o>", "<C-o>zz", { noremap = true, silent = true })
vim.keymap.set("n", "%", "%zz", { noremap = true, silent = true })
vim.keymap.set("n", "*", "*zz", { noremap = true, silent = true })
vim.keymap.set("n", "#", "#zz", { noremap = true, silent = true })
vim.api.nvim_create_autocmd("CmdLineLeave", {
  callback = function()
      if not vim.b.is_codeium_suggestion then
          --vim.api.nvim_feedkeys("zz", "n", false)
      end
      if vim.b.is_codeium_suggestion then
          vim.cmd("normal! zz")
      end
      vim.b.is_codeium_suggestion = false;
  end,
})

vim.api.nvim_set_keymap("n", ",2", ":cn<cr><cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",3", ":cp<cr><cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",1", ":cfirst<cr><cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",4", ":clast<cr><cr>", { noremap = true, silent = true })


vim.keymap.set('n', '<space>4', function()
  vim.cmd('below split E:/Minedu/Ayni/Request/procesarMensaje.http')
  vim.cmd("lua require('kulala').run()")
end)

vim.keymap.set('n', '<space>5', function()
  vim.cmd('below split E:/Minedu/Ayni/Request/procesarJobPlaza.http')
  vim.cmd("lua require('kulala').run()")
end)

vim.keymap.set('n', '<space>6', function()
  vim.cmd('below split E:/Minedu/Ayni/Request/procesarPDF.http')
  vim.cmd("lua require('kulala').run()")
end)

vim.keymap.set("n", ",vu", ':let @+ = "sigsda10"<cr><esc>', { noremap = true, silent = true })
vim.keymap.set("n", ",vc", ':let @+ = "456Alvaro"<cr><esc>', { noremap = true, silent = true })
vim.keymap.set("n", ",bc", ':let @+ = "http://localhost:4200/ayni/personal/procesospersonal/procesos/contratacion/consolidado/356"<cr><esc>', { noremap = true, silent = true })

vim.keymap.set("n", "<space>gla", function()
local path
  for dir in io.popen([[dir "E:/logs/apps" /b/O:D]]):lines() do path = dir end 
  return ':!start notepad++ "E:/logs/apps/'..path..'"<cr><cr>'
end, { expr = true })

vim.keymap.set("n", "<leader>l", function()
    if vim.wo.wrap then
        vim.wo.wrap = false
    else
        vim.wo.wrap = true
    end
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>rn", function()
    vim.o.relativenumber = not vim.o.relativenumber
end, { noremap = true, silent = true })

vim.keymap.set("n", "<space>go", function()
  local path_file = vim.fn.expand('%:p:h')..'/'..vim.fn.expand('%:t:r')..'.ts'
  local word = vim.fn.expand('<cword>')
  vim.cmd(":split +/"..word.." "..path_file)
  vim.cmd("only")
end)

vim.keymap.set("n", "<space>gts", function()
  local path_file = vim.fn.expand('%:p:h')..'/'..vim.fn.expand('%:t:r')..'.ts'
  local word = vim.fn.expand('<cword>')
  local existFile = vim.fn.isdirectory(path_file)
  return ":split +/"..word.." "..path_file.."<cr><cr>"
end, { expr = true })

vim.keymap.set("n", "<space>gtv", function()
  local path_file = vim.fn.expand('%:p:h')..'/'..vim.fn.expand('%:t:r')..'.ts'
  local word = vim.fn.expand('<cword>')
  local existFile = vim.fn.isdirectory(path_file)
  return ":vsplit +/"..word.." "..path_file.."<cr><cr>"
end, { expr = true })

vim.keymap.set("n", ",e", function()
    -- Obtener el nombre del archivo actual
    local file_name = vim.fn.expand("%:t") -- Solo el nombre del archivo, sin el path completo
    vim.cmd("Explore")
    if file_name ~= "" then
        -- Retrasar la búsqueda para asegurar que netrw cargue completamente
        vim.defer_fn(function()
            -- Buscar el archivo con el nombre copiado
            vim.cmd("/" .. vim.fn.escape(file_name, "/"))
            vim.cmd(":noh")
        end, 100) -- Retraso de 100 ms
    end
end)
vim.cmd([[
nnoremap gob  :s/\((\zs\\|,\ *\zs\\|)\)/\r&/g<CR><Bar>:'[,']normal ==<CR><Bar>:noh<CR>
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
]])

vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>2", ":resize +5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>3", ":resize -5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>4", ":vertical resize -5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>1", ":vertical resize +5<CR>", { noremap = true, silent = true })
