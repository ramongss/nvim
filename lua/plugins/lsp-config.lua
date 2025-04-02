return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installedc = { "pyright", "r_language_server", "marksman" },
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.r_language_server.setup({
        capabilities = capabilities,
        cmd = { 'R', '--no-echo', '-e', 'languageserver::run()' },
        filetypes = { 'r', 'rmd', 'quarto' },
        root_dir = function(fname)
          return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1]) or vim.loop.os_homedir()
        end,
        log_level = vim.lsp.protocol.MessageType.Warning,
      })
      lspconfig.marksman.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Displays hover information about the symbol under the cursor in a floating window" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Jumps to the definition of the symbol under the cursor" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Lists all the references to the symbol under the cursor in the quickfix window" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Selects a code action available at the current cursor position" })
    end,
  },
}
