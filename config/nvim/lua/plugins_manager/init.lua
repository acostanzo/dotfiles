require('plugins_manager.autocompile')
local packer_bootstrapped = require('plugins_manager.bootstrap')()
local plugins = require('plugins_manager.plugins')

return require('packer').startup(function(use)
  -- Install specified plugins
  plugins(use)

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrapped then
    require('packer').sync()
  end
end)
