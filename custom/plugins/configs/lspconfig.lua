local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local servers = { "html",  "clangd", "jsonls", "lua_ls", "pyright" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
