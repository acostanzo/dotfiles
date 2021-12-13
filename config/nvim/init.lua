-- Customize leader key
vim.g.mapleader = ','

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
vim.opt.colorcolumn = '+1'

-- Show line numbers
vim.opt.number = true

-- One space when joining lines ending in punctuation
vim.opt.joinspaces = false

-- Nerd Tree Bindings
vim.api.nvim_set_keymap('n', '<Leader>D', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>F', ':NERDTreeFind<CR>', {noremap = true})

-- Install Plugins via Packer
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Jump to last known cursor position
vim.cmd([[
  augroup vimrcEx
    autocmd!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it for commit messages, when the position is invalid, or when
    " inside an event handler (happens when dropping a file on gvim).
    autocmd BufReadPost *
      \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

    " Set syntax highlighting for specific file types
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
    autocmd BufRead,BufNewFile */zsh/configs/* set filetype=sh
  augroup END
]])
