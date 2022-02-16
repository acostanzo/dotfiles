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
	use({ "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } })
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "neovim/nvim-lspconfig" }) -- Language Server
	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- Tree Sitter syntax highlighting
	use({ "vim-test/vim-test" })
	use({ "terrortylor/nvim-comment" })
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "onsails/lspkind-nvim" })
	use({ "tpope/vim-surround" })

	-- Git
	use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use({
		"pwntester/octo.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"kyazdani42/nvim-web-devicons",
		},
	})

	-- Autocomplete
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "dcampos/nvim-snippy" })
	use({ "dcampos/cmp-snippy" })

	-- Themes
	use({ "EdenEast/nightfox.nvim" })
end)
