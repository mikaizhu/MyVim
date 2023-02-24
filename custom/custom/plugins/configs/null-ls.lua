local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local e = os.getenv "GOIMPORTS_LOCAL"
if e ~= nil then
  b.formatting.goimports = b.formatting.goimports.with { extra_args = { "-local", e } }
end

-- can find sources in:
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
  -- Go
  b.formatting.goimports,
  -- Lua
  b.formatting.stylua,
  -- Shell
  b.formatting.shfmt,
  b.code_actions.shellcheck,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.clang_format,

  -- python
  -- b.formatting.autopep8,
  -- b.formatting.isort,
  b.formatting.black,
  --b.diagnostics.flake8,

  -- markdown and others
  b.formatting.prettierd,
}

null_ls.setup {
  debug = false,
  sources = sources,
}
