return {
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    cmd = {
      "ClaudeCode",
      "ClaudeCodeFocus",
      "ClaudeCodeAdd",
      "ClaudeCodeSend",
      "ClaudeCodeSelectModel",
      "ClaudeCodeDiffAccept",
      "ClaudeCodeDiffDeny",
      "ClaudeCodeTreeAdd",
    },
    config = true,
    init = function()
      local map = require("helpers.keys").map

      map({ "n", "v" }, "<C-p>", "<cmd>ClaudeCode<cr>", "Toggle Claude")
      map("n", "<leader>ac", "<cmd>ClaudeCode<cr>", "Toggle Claude")
      map("n", "<leader>af", "<cmd>ClaudeCodeFocus<cr>", "Focus Claude")
      map("n", "<leader>ar", "<cmd>ClaudeCode --resume<cr>", "Resume Claude")
      map("n", "<leader>aC", "<cmd>ClaudeCode --continue<cr>", "Continue Claude")
      map("n", "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", "Select Claude model")
      map("n", "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", "Add current buffer")
      map("v", "<leader>as", "<cmd>ClaudeCodeSend<cr>", "Send to Claude")
      -- Diff management
      map("n", "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", "Accept diff")
      map("n", "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", "Deny diff")

      -- File tree: add file with <leader>as
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
        callback = function(ev)
          vim.keymap.set("n", "<leader>as", "<cmd>ClaudeCodeTreeAdd<cr>",
            { silent = true, desc = "Add file", buffer = ev.buf })
        end,
      })
    end,
  },
}
