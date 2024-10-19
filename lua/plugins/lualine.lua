-- Fancier statusline
return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local colorscheme = require("helpers.colorscheme")
        local lualine_theme = colorscheme == "default" and "auto" or colorscheme
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = lualine_theme,
                component_separators = "|",
                section_separators = "",
            },
              sections = {
                  lualine_a = {"mode"},
                  lualine_b = {"branch", "diff", "diagnostics"},
                  lualine_c = {{"filename", file_status = true,  newfile_status = true, path = 1}},
                  lualine_x = {'encoding', 'fileformat', 'filetype'},
                  lualine_y = {''}, -- disable progress
                  lualine_z = {'location'}
              },
        })
    end,
}
