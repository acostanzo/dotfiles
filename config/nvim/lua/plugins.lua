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
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'neovim/nvim-lspconfig' } -- Language Server
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Tree Sitter syntax highlighting
  use { 'scrooloose/nerdtree' }
  use { 'vim-test/vim-test' }
  use { 'terrortylor/nvim-comment' }

  -- Autocomplete
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'dcampos/nvim-snippy' }
  use { 'dcampos/cmp-snippy' }

  -- Themes
  use { 'EdenEast/nightfox.nvim' }
end)
