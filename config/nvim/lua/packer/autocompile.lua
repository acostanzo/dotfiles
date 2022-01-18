vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost config/nvim/lua/packer/init.lua source <afile> | PackerSync
  augroup end
]])
