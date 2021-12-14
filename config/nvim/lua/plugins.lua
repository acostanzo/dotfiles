-- Install packer if it doesn't already exist
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer can manage itself 
  use 'wbthomason/packer.nvim' 

  -- My plugins here
  use 'scrooloose/nerdtree'
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
