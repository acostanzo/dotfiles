require("lualine").setup({
	options = {
		globalstatus = true,
	},
	sections = {
		lualine_c = { "filename", "lsp_progress" },
	},
})
