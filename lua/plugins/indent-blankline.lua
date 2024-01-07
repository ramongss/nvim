return {
  "lukas-reineke/indent-blankline.nvim",
  tag = "v2.20.8",
  config = function()
    vim.opt.backspace = "indent,eol,start"
    vim.opt.list = true
    vim.opt.listchars:append("space:⋅")

    require("indent_blankline").setup({
      space_char_blankline = " ",
      show_current_context = true,
      show_current_context_start = true,
    })
  end,
  -- main = "ibl",
  -- config = function()
  -- 	require("ibl").setup({
  --      indent = {
  -- 			-- highlight = { "Function", "Conditional", "Repeat", "Label", "Exception" },
  --        -- whitespace = {
  --        --   space = " "
  --        -- }
  -- 		},
  -- 		whitespace = {
  --        remove_blankline_trail = false,
  -- 		},
  --      scope = {
  --        include = { node_type = { ["*"] = {"*"} } }
  --      }
  -- 	})
  -- end,
}
