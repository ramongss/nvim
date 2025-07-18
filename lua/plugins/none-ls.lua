return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim"
  },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.isort,
				-- null_ls.builtins.formatting.blue,
        require("none-ls.formatting.blue"),
			},
		})

		vim.keymap.set("n", "<leader>gq", vim.lsp.buf.format, { desc = "Format the entire code" })
	end,
}
