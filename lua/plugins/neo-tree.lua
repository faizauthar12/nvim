return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                window = {
                    position = "right",
                    width = 30,
                }
            })

            local map = require("helpers.keys").map

            map(
                { "n", "v" },
                "<C-M-b>",
                "<cmd>Neotree toggle<cr>",
                "Neotree: Toggle file explorer"
            )

            map(
                { "n", "v" },
                "<leader>e",
                "<cmd>Neotree focus<cr>",
                "Neotree: focus to file explorer"
            )
        end,
    },
}
