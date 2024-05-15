return {
	"catppuccin/nvim",
	name = "catppuccin",
	-- Optional; default configuration will be used if setup isn't called.
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
		})

		vim.cmd("colorscheme catppuccin")
	end,
}
