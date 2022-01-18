require('packer.autocompile')
local packer_bootstrapped = require('packer.bootstrap')()

return require('packer').startup(function(use)
  -- Packer can manage itself 
  use 'wbthomason/packer.nvim' 

  -- Utilities
  use 'scrooloose/nerdtree'
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use 'vim-test/vim-test'

  -- lanuage server
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- language specific
  use({
    'nvim-treesitter/nvim-treesitter',
    run = { ':TSUpdate' } -- update parsers on updates
  })
  use 'mogelbrod/vim-jsonpath'
  use 'ellisonleao/glow.nvim' -- markdown previewer

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrapped then
    require('packer').sync()
  end
end)
