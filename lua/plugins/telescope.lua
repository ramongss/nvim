return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.5",
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
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fh", builtin.oldfiles, {})

        -- telescope git commands
        vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
        vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
        vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
        vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
        require("telescope").load_extension("ui-select")
      end,
  },
  {

  },
}
