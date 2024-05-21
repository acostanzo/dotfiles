local U = {}

function CWD()
	local str = debug.getinfo(2, "S").source:sub(2)
	return str:match("(.*/)")
end

function KB(mode, keyStroke, action, opts)
	vim.api.nvim_set_keymap(mode, keyStroke, action, opts or { noremap = true })
end

function BKB(bufnr, mode, keyStroke, action, opts)
	vim.api.nvim_buf_set_keymap(bufnr, mode, keyStroke, action, opts or { noremap = true, silent = true })
end

function TableContains(tbl, x)
	local found = false
	for _, v in pairs(tbl) do
		if v == x then
			found = true
		end
	end
	return found
end

function TableClone(source)
	local clone = {}
	for k, v in pairs(source) do
		clone[k] = v
	end
	return clone
end

function TableSpread(source, tbl)
	local merged = TableClone(source)
	for k, v in pairs(tbl) do
		merged[k] = v
	end
	return merged
end

return U
