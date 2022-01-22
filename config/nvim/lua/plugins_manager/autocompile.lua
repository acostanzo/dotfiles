vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost config/nvim/lua/plugins_manager/*.lua source <afile> | PackerCompile
  augroup end
]])
