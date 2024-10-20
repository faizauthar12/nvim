-- Git related plugins
return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },
    {
        "akinsho/git-conflict.nvim",
        config = function()
            require("git-conflict").setup({
                default_mappings = {
                    ours = "co",
                    theirs = "ct",
                    none = "c0",
                    both = "cb",
                    next = "cn",
                    prev = "cp",
                },
            })
        end,
    },
    {
        "tpope/vim-fugitive",
        config = function ()
            local map = require("helpers.keys").map
            map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
            map("n", "<leader>gb", "<cmd>Git blame<cr>", "Show the blame")
            map("n", "<leader>gd", "<cmd>Git diff<cr>", "Show git diff")
            map("n", "<leader>gl", "<cmd>Git log<cr>", "Show git log")
            map("n", "<leader>gs", "<cmd>Git status<cr>", "Show git status")
        end
    }
}
