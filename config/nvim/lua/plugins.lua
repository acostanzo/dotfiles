-- Recompile on save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Utilities
  use({ "arkav/lualine-lsp-progress" })                                                           -- Lualine plugin for LSP index progress
  use({ "jghauser/mkdir.nvim" })                                                                  -- Make directories when saving file
  use({ "jose-elias-alvarez/null-ls.nvim" })                                                      -- Bridge for non-LSP sources to hook into the language server
  use({ "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } })              -- File Explorer
  use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })                      -- Display Git indicators in gutter
  use({ "mogelbrod/vim-jsonpath" })                                                               -- Easily view the full dot path of a JSON node
  use({ "neovim/nvim-lspconfig" })                                                                -- Language Server
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }) -- Bottom status line
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })                               -- Fuzzy find
  use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })            -- Fuzzy find
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })                                   -- Tree Sitter syntax highlighting
  use({ "onsails/lspkind-nvim" })                                                                 -- Pictograms for built-in LSP
  use({ "terrortylor/nvim-comment" })                                                             -- Language based commenting
  use({ "tpope/vim-fugitive" })                                                                   -- Git commands - most notably :Gblame
  use({ "tpope/vim-projectionist" })                                                              -- :A to jump between spec and code
  use({ "tpope/vim-surround" })                                                                   -- Extensive "surround" support for parentheses, quotes, tags, etc.
  use({ "vim-test/vim-test" })                                                                    -- Run tests from within test file

  -- Seamless Tmux
  use({ "christoomey/vim-tmux-navigator" })

  -- Autocomplete
  use({ "dcampos/cmp-snippy" })   -- Autocomplete plugin for snippy snippets
  use({ "dcampos/nvim-snippy" })  -- Language based snippets
  use({ "hrsh7th/cmp-buffer" })   -- Autocomplete support for words in buffers
  use({ "hrsh7th/cmp-cmdline" })  -- Autocomplete support for neovim command line
  use({ "hrsh7th/cmp-nvim-lsp" }) -- Autocomplete support for language server
  use({ "hrsh7th/cmp-path" })     -- Autocomplete support for filesystem paths
  use({ "hrsh7th/nvim-cmp" })     -- Autocompletion engine

  -- Themes
  use({ "EdenEast/nightfox.nvim" })
  use({ "catppuccin/nvim", as = "catppuccin" })
end)
