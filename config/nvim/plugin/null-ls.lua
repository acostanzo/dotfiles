local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.prettierd,
  formatting.stylua,
}

local on_attach = function(client)
  if client.resolved_capabilities.document_formatting then
    vim.cmd([[
      augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
      augroup END
    ]])
  end
end

null_ls.setup {
  sources = sources,
  on_attach = on_attach,
}