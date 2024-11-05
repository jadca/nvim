local map = function(key)
  -- get the extra options
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  -- basic support for buffer-scoped keybindings
  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

map{'n', '<Leader>w', ':write<CR>', noremap = true}
map{'n', '<Leader>rn', ':lua vim.lsp.buf.rename()<CR>', noremap = true}
map{'n', '<Leader>fu', ':Telescope lsp_references<CR>', noremap = true}
map{'n', '<Leader>v', ':e ~/AppData/Local/nvim/init.vim<CR>', noremap = true}
map{'n', '<Leader>s', ':so ~/AppData/Local/nvim/init.vim<CR>', noremap = true}
map{ 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', noremap = true}
map{'n', '<Tab>k', "<cmd>lua vim.diagnostic.goto_next({ popup_opts = { border = 'single' }})<CR>", noremap = true}
map{'n', '<Tab>j', "<cmd>lua vim.diagnostic.goto_prev({ popup_opts = { border = 'single' }})<CR>", noremap = true}
map{'n', '<Tab><Tab>', ':lua  vim.diagnostic.open_float(0, { scope = "line", border = "single" }) <CR>', noremap = true}
map{'n', '<Leader>dd', '<cmd>Telescope diagnostics<CR>', noremap = true}

map{'n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", noremap = true}
map{'n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", noremap = true}
--map{'n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown{previewer = true})<cr>", noremap = true}
map{'n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", noremap = true}
--map{'n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = true})<cr>", noremap = true}
map{'n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", noremap = true}
map{'n', '<leader>bb', "<cmd>Goyo<cr>", noremap = true}
map{'n', '<leader>hy', "<cmd>call emmet#lang#html#balanceTag(10)<cr>", noremap = true}

map{'n', ',ha', "<cmd>lua require('harpoon.mark').add_file()<cr>", noremap = true}
map{'n', ',hm', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", noremap = true}
map{'n', ',hs', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", noremap = true}
map{'n', ',hd', "<cmd>lua require('harpoon.ui').nav_next()<cr>", noremap = true}
map{'n', ',hx', "<cmd>lua require('harpoon.mark').rm_file()<cr>", noremap = true}
map{'n', ',ho', "<cmd>lua require('harpoon.mark').clear_all()<cr>", noremap = true}
map{'n', ',h1', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", noremap = true}
map{'n', ',h2', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", noremap = true}
map{'n', ',h3', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", noremap = true}
map{'n', ',h4', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", noremap = true}


vim.api.nvim_set_keymap("n", "<A-s>", ":LspOverloadsSignature<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-s>", "<cmd>LspOverloadsSignature<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "{", "{zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "}", "}zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "G", "Gzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gg", "ggzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-i>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-o>", "<C-o>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "%", "%zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "*", "*zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "#", "#zz", { noremap = true, silent = true })
--vim.api.nvim_create_autocmd("CmdLineLeave", {
  --callback = function()
    ----vim.api.nvim_feedkeys("zz", "n", false)
    --if vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?' then
      --vim.cmd("normal! zz")
    --end
  --end,
--})
-- Define una función para centrar la línea después de una búsqueda
local function center_after_search()
    -- Revisa si la última búsqueda fue con / o ?
    local search_cmd = vim.fn.getcmdtype()
    if search_cmd == "/" or search_cmd == "?" then
        vim.api.nvim_feedkeys("zz", "n", false)  -- Centra la línea de la búsqueda
    end
end

-- Configura un autocmd para ejecutar la función al salir del modo de línea de comandos
vim.api.nvim_create_autocmd("CmdlineLeave", {
    callback = center_after_search,
})

vim.api.nvim_set_keymap("n", ",2", ":cn<cr><cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",3", ":cp<cr><cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",1", ":cfirst<cr><cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",4", ":clast<cr><cr>", { noremap = true, silent = true })
vim.keymap.set("n", ",5", function()
  local numero = vim.fn.input("numero > ") 
  return ":cc"..numero.."<cr><cr>"
end, { expr = true })

vim.keymap.set("n", "<space>gts", function()
  local path_file = vim.fn.expand('%:p:h')..'/'..vim.fn.expand('%:t:r')..'.ts'
  local word = vim.fn.expand('<cword>')
  local existFile = vim.fn.isdirectory(path_file)
--print(existFile)
  return ":split +/"..word.." "..path_file.."<cr><cr>"
end, { expr = true })
vim.keymap.set("n", "<space>gtv", function()
  local path_file = vim.fn.expand('%:p:h')..'/'..vim.fn.expand('%:t:r')..'.ts'
  local word = vim.fn.expand('<cword>')
  local existFile = vim.fn.isdirectory(path_file)
--print(existFile)
  return ":vsplit +/"..word.." "..path_file.."<cr><cr>"
end, { expr = true })

vim.keymap.set("n", "<space>gla", function()
local path
  --for dir in io.popen([[dir "C:/logs/apps/Minedu.ProcesoContratacion.Api/" /b/O:-D]]):lines() do print("1111"..dir) end 
  for dir in io.popen([[dir "C:/logs/apps/Minedu.ProcesoContratacion.Api/" /b/O:D]]):lines() do path = dir end 
  return ':!start notepad++ "C:/logs/apps/Minedu.ProcesoContratacion.Api/'..path..'"<cr><cr>'
end, { expr = true })

vim.keymap.set("n", "<space>glj", function()
local path
  --for dir in io.popen([[dir "C:/logs/apps/Minedu.ProcesoContratacion.Api/" /b/O:-D]]):lines() do print("1111"..dir) end 
  for dir in io.popen([[dir "C:/logs/apps/Minedu.ProcesoContratacion.Job/" /b/O:D]]):lines() do path = dir end 
  return ':!start notepad++ "C:/logs/apps/Minedu.ProcesoContratacion.Job/'..path..'"<cr><cr>'
end, { expr = true })

vim.keymap.set("n", "<space>xx", function()
  local palabra = vim.fn.expand('<cword>')
  local cantidad = string.len(palabra)
  local word = '_'..string.sub(palabra,2,cantidad - 1)..';'
  local line = vim.api.nvim_get_current_line()
  --vim.api.nvim_set_current_line('ddddd')
  --vim.api.nvim_exec("normal! diwi", false)
  --print(line)
  --vim.api.nvim_command("h " .. vim.fn.expand("<cword>"))
  --vim.api.nvim_command("call nvim_buf_set_lines(0,0,-1,v:true,['aaa','bbbbb','ccccccc','dddddddd'])")
  --vim.api.nvim_exec("call nvim_buf_set_lines(0,0,-1,v:true,['aaa','bbbbb','ccccccc','dddddddd'])", false)
  --vim.api.nvim_buf_set_lines(0,0,-1,true,{'aaa','bbbbb','ccccccc','dddddddd'})
return ':call nvim_buf_set_lines(1,1,-1,v:true,["aaa","bbbbb","ccccccc","dddddddd"])' 
end, { expr = true })

vim.keymap.set('n', '<F10>', function()
  vim.cmd('below split')
  vim.cmd('terminal')
  vim.fn.feedkeys('a')
  local enter = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
  vim.fn.feedkeys('clear' .. enter)
  vim.fn.feedkeys('echo hello world' .. enter)
end)

vim.keymap.set('n', '<space>4', function()
  vim.cmd('below split E:/Minedu/Ayni/Request/procesarMensaje.http')
  vim.cmd("lua require('rest-nvim').run()")
end)

vim.keymap.set('n', '<space>5', function()
  vim.cmd('below split E:/Minedu/Ayni/Request/procesarJobPlaza.http')
  vim.cmd("lua require('rest-nvim').run()")
end)

vim.keymap.set('n', '<space>6', function()
  vim.cmd('below split E:/Minedu/Ayni/Request/procesarPDF.http')
  vim.cmd("lua require('rest-nvim').run()")
end)
vim.api.nvim_set_keymap(
  "n",
  "<space>ow",
  ":Telescope file_browser<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<space>ob",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
vim.keymap.set('n', ',rs', function()
  vim.cmd("lua require('rest-nvim').run()")
end)
function ToggleStatusLine()
    if vim.o.laststatus == 2 then
        vim.o.laststatus = 0
    else
        vim.o.laststatus = 2
    end
end
vim.api.nvim_set_keymap('n', ',sl', ':lua ToggleStatusLine()<CR>', { noremap = true, silent = true })

