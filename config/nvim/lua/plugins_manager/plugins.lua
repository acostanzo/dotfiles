return function(use)
  -- Packer can manage itself 
  use 'wbthomason/packer.nvim' 

  -- Utilities
  use 'scrooloose/nerdtree'
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use 'vim-test/vim-test'

  -- Language Server
  use 'neovim/nvim-lspconfig'
end
