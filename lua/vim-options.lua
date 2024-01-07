-- tabs & indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
-- vim.cmd("set expandtab")
-- vim.cmd("set tabstop=2")
-- vim.cmd("set softtabstop=2")
-- vim.cmd("set shiftwidth=2")

-- define leader
vim.g.mapleader = " "

-- line wrapping
vim.opt.wrap = false -- disable line wrapping

-- line number
vim.wo.number = true

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- cursor line
vim.opt.cursorline = true -- highlight the current cursor line

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { desc = "Moves to the window above the current one" })
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { desc = "Moves to the window below the current one" })
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { desc = "Moves to the window right the current one" })
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { desc = "Moves to the window left the current one" })

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { desc = "Disable the effect of 'hlsearch' when loading the shada file" })

