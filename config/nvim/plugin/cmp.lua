local cmp = require("cmp")
local lspkind = require("lspkind")

local formatting = {
	format = lspkind.cmp_format(),
}

local mapping = {
	["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
	["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
	["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
	["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
	["<C-c>"] = cmp.mapping({
		i = cmp.mapping.abort(),
		c = cmp.mapping.close(),
	}),
	["<CR>"] = cmp.mapping.confirm({ select = true }),
}

cmp.setup({
	formatting = formatting,
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require("snippy").expand_snippet(args.body)
		end,
	},
	mapping = mapping,
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "snippy" },
	}, {
		{ name = "buffer" },
	}),
})

cmp.setup.cmdline("/", {
	formatting = formatting,
	mapping = mapping,
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	formatting = formatting,
	mapping = mapping,
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
