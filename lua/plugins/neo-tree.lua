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
            require("helpers.keys").map(
                { "n", "v" },
                "<C-M-b>",
                "<cmd>NeoTreeRevealToggle<cr>",
                "Neotree: Toggle file explorer"
            )
            require("helpers.keys").map(
                { "n", "v" },
                "<leader>e",
                "<cmd>Neotree<cr>",
                "Neotree: move buffer to file explorer"
            )
        end,
    },
}
