local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins
local goimports = b.formatting.goimports

local e = os.getenv "GOIMPORTS_LOCAL"
if e ~= nil then
  goimports = goimports.with { extra_args = { "-local", e } }
end

-- can find sources in:
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
  -- Go
  goimports,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.code_actions.shellcheck,

  -- cpp
  b.formatting.clang_format,

  -- python
  null_ls.builtins.formatting.isort,

  -- markdown and others
  null_ls.builtins.formatting.prettierd,
}

null_ls.setup {
  debug = false,
  sources = sources,
}
