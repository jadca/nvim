local M = {}

function M.setup_lualine()
    require('lualine').setup {
        options = {
            icons_enabled = true, -- Habilitar íconos si tienes el plugin 'nvim-web-devicons'
            theme = 'aurora', -- Cambia el tema si lo deseas
            component_separators = '|',
            section_separators = '',
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        extensions = {'fugitive'}
    }
end
return M
