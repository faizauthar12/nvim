return{
    {
        "hedyhli/outline.nvim",
        -- lazy = true,
        -- cmd = { "Outline", "OutlineOpen" },
        config = function()
            -- Map space-o to toggle outline
            local map = require("helpers.keys").map
            map("n", "<C-b>", "<cmd>Outline<CR>", "Toggle Outline")

            require("outline").setup {
                -- Your setup opts here (leave empty to use defaults)
                outline_window = {
                    position = "left",
                    width = 20,
                }
            }
        end,
    },
}
