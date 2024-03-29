local keybindings = function(bufnr)
  BKB(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  BKB(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  BKB(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  BKB(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  -- BKB(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  BKB(bufnr, "n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
  BKB(bufnr, "n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
  BKB(bufnr, "n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
  BKB(bufnr, "n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  BKB(bufnr, "n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  BKB(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  BKB(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  BKB(bufnr, "n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>")
  BKB(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
  BKB(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
  BKB(bufnr, "n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>")
  BKB(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.format { async = true }<CR>")
end

return keybindings
