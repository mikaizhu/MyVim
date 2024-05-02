-- EXAMPLE
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = require("configs.overrides").lsp_server

-- local on_attach = function(client, bufnr)
-- 	require("nvchad.configs.lspconfig").on_attach
-- 	vim.keymap.del("n", "K")
-- end


-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	})
end
