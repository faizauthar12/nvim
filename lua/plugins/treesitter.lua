-- Highlight, edit, and navigate code
return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            pcall(require("nvim-treesitter.install").update({ with_sync = true }))
        end,

        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "nvim-treesitter/nvim-treesitter-context",
        },
        
        config = function()
            require("nvim-treesitter.configs").setup({
                -- Add languages to be installed here that you want installed for treesitter
                ensure_installed = { "c", "cpp", "go", "lua", "python", "rust", "vimdoc", "vim" },

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                highlight = {
                    enable = true,

                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false,
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["aa"] = "@parameter.outer",
                            ["ia"] = "@parameter.inner",
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            ["]f"] = "@function.outer",
                            ["]c"] = "@class.outer",
                        },
                        goto_next_end = {
                            ["]F"] = "@function.outer",
                            ["]C"] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[f"] = "@function.outer",
                            ["[c"] = "@class.outer",
                        },
                        goto_previous_end = {
                            ["[F"] = "@function.outer",
                            ["[C"] = "@class.outer",
                        },
                    },
                    swap = {
                        enable = true,
                        swap_next = { ["<leader>na"] = "@parameter.inner" },
                        swap_previous = { ["<leader>pa"] = "@parameter.inner" },
                    },
                },
            })

            require('treesitter-context').setup {
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                multiwindow = true, -- Enable multiwindow support.
            }
        end
    }
}
