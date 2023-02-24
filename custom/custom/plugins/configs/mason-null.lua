local present, mason_null = pcall(require, "mason-null-ls")

if not present then
  return
end

mason_null.setup {
  ensure_installed = {
    -- format
    "goimports",
    "stylua",
    "shfmt",
    "shellcheck",
    "clang_format",
    "autopep8",
    "isort",
    "prettierd",
    "gofumpt",
  },
}
