return {
    {
        "zbirenbaum/copilot.lua",
        config =  function ()
            require("copilot").setup({
                suggestion = {
                    keymap = {
                        accept = "<C-y>",
                    },
                },
            })
        end
    }
}
