-- Customize leader key
vim.g.mapleader = ","

-- Set the behavior of tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable backups/swap files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Specify default split direction
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Easily identify the 80 column limit
vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

-- Show line numbers
vim.opt.number = true
