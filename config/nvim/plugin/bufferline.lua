vim.opt.termguicolors = true
vim.api.nvim_set_keymap("n", "<c-h>", ":BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-l>", ":BufferLineCycleNext<CR>", { noremap = true })
require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
		separator_style = "slant",
		show_buffer_close_icons = false,
		show_close_icon = false,
		style = "slant",
	},
})
