-- Recompile on save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself 
  use 'wbthomason/packer.nvim' 

  -- Utilities
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'neovim/nvim-lspconfig' } -- Language Server
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Tree Sitter syntax highlighting
  use { 'scrooloose/nerdtree' }
  use { 'vim-test/vim-test' }

  -- Themes
  use { 'EdenEast/nightfox.nvim' }
end)
