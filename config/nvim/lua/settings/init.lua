-- Customize leader key
vim.g.mapleader = ","

-- Copy to system clipboard
vim.opt.clipboard = "unnamed"

-- Set the behavior of tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Automatically :write before running commands
vim.opt.autowrite = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable backups/swap files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Command lookback history
vim.opt.history = 50

-- Specify default split direction
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Easily identify the 80 column limit
vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

-- Show line numbers
vim.opt.number = true

-- One space when joining lines ending in punctuation
vim.opt.joinspaces = false

-- Edit from current file path
KB("n", "<Leader>h", ":e %:h")

-- Enter normal mode in terminal mode
KB("t", "<C-]>", "<C-\\><C-N>")
KB("t", "<C-[>", "<C-\\><C-N>")
KB("t", "<ESC>", "<C-\\><C-N>")

-- Spellchecking
vim.opt.spelllang = "en"
