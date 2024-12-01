vim.o.number = true           -- Mostrar números de línea
vim.o.relativenumber = true   -- Números relativos
vim.o.expandtab = true        -- Convertir tabs en espacios
vim.o.shiftwidth = 4          -- Tamaño de indentación
vim.o.tabstop = 4             -- Número de espacios para tabulación
vim.o.softtabstop = 4
vim.b.is_codeium_suggestion = true
vim.opt.hidden = true            -- Permitir buffers ocultos
vim.opt.splitbelow = true        -- Las nuevas ventanas se abrirán debajo
vim.opt.splitright = true        -- Las nuevas ventanas se abrirán a la derecha
vim.opt.cursorline = true
vim.o.swapfile = false
vim.g.codeium_manual = true
vim.wo.wrap = false
vim.opt.ignorecase = true  -- Ignorar mayúsculas/minúsculas en búsquedas simples.
vim.opt.smartcase = true   -- Buscar de forma sensible si hay mayúsculas en el término.
-- Desactivar el mouse
vim.o.mouse = ""
-- Mejorar el rendimiento al desactivar el scroll innecesario
vim.o.lazyredraw = true
vim.o.scrolloff = 0


-- Habilitar termguicolors para colores de alta calidad
vim.o.termguicolors = true


-- Configuración para un inicio más rápido
vim.opt.lazyredraw = true
vim.opt.history = 1000
vim.opt.undofile = false
vim.o.laststatus = 0  -- Desactiva la línea de estado

vim.o.updatetime = 300  -- Establecer un tiempo de espera más largo para la actualización de los buffers

vim.opt.shada = ""
vim.opt.sessionoptions = vim.opt.sessionoptions - {"options", "resize", "globals", "help"}

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
            print(vim.bo.filetype)
        if vim.bo.filetype == "netrw" then
            local current_file = vim.fn.expand("%:p") -- Archivo actual con ruta completa
            vim.cmd("normal! gg") -- Ir al inicio para buscar desde el principio

            -- Buscar el archivo en el buffer de netrw
            vim.cmd("normal! /" .. vim.fn.fnameescape(current_file) .. "\\<CR>")
        end
    end,
})
