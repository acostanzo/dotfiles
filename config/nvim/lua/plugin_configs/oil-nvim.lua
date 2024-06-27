return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup()

		vim.keymap.set("n", "<Leader>h", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
