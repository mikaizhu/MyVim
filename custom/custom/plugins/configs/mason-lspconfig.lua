local present, mason_lspconfig = pcall(require, "mason-lspconfig")

if not present then
 return
end

mason_lspconfig.setup ({
 ensure_installed = {"clangd","cmake","sumneko_lua","marksman","pyright","pyre","pylsp","jsonls","bashls"},
 automatic_installation = true,
})
