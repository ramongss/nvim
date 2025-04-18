return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
      "nvim-telescope/telescope.nvim",
      -- tag = "0.1.5",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("telescope").setup({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown({}),
            },
          },
        })
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search files using grep" })
        vim.keymap.set("n", "<leader>fh", builtin.oldfiles, { desc = "Show recent opened files" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Show open buffers" })

        -- telescope git commands
        vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "List all git commits" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
        vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", { desc = "List git commits for current file/buffer" }) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
        vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", {desc = "List git branches" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
        vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "List current changes per file with diff preview" }) -- list current changes per file with diff preview ["gs" for git status]
        require("telescope").load_extension("ui-select")
      end,
  },
  {

  },
}
