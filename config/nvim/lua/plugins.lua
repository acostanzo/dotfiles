-- Recompile on save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself 
  use 'wbthomason/packer.nvim' 

  -- Utilities
  use 'scrooloose/nerdtree'
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use 'vim-test/vim-test'

  -- Language Server
  use 'neovim/nvim-lspconfig'

  -- Themes
  use 'EdenEast/nightfox.nvim'
end)
