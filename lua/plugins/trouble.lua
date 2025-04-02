-- return {
--   "folke/trouble.nvim",
--   dependencies = { "nvim-tree/nvim-web-devicons" },
--   -- opts = {}, -- for default options, refer to the configuration section for custom setup.
--   cmd = "Trouble",
--   keys = {
--     {
--       "<leader>xx",
--       "<cmd>Trouble diagnostics toggle<cr>",
--       desc = "Diagnostics (Trouble)",
--     },
--     {
--       "<leader>xX",
--       "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
--       desc = "Buffer Diagnostics (Trouble)",
--     },
--     {
--       "<leader>cs",
--       "<cmd>Trouble symbols toggle focus=false<cr>",
--       desc = "Symbols (Trouble)",
--     },
--     {
--       "<leader>cl",
--       "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
--       desc = "LSP Definitions / references / ... (Trouble)",
--     },
--     {
--       "<leader>xL",
--       "<cmd>Trouble loclist toggle<cr>",
--       desc = "Location List (Trouble)",
--     },
--     {
--       "<leader>xQ",
--       "<cmd>Trouble qflist toggle<cr>",
--       desc = "Quickfix List (Trouble)",
--     },
--   },
-- }

return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
  config = true,
  keys = {
    { 
      "<leader>Dx", 
      function() 
        require("trouble").toggle() 
      end, 
      desc = "[D]iagnostics: Toggle diagnostics" 
    },
    {
       "<leader>Dd", 
      function() 
        require("trouble").toggle("document_diagnostics") 
      end, 
      desc = "[D]iagnostics: Toggle [d]ocument diagnostics" 
    },
    {
       "<leader>Dw", 
      function() 
        require("trouble").toggle("workspace_diagnostics") 
      end, 
      desc = "[D]iagnostics: Toggle [w]orkspace diagnostics" 
    },
    {
       "<leader>Dq", 
      function() 
        require("trouble").toggle("quickfix") 
      end, 
      desc = "[D]iagnostics: Toggle diagnostic [q]uickfix list" 
    },
  },
}
