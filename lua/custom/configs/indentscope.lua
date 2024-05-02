local present, indentscope = pcall(require, "mini.indentscope")

if not present then
  return
end

indentscope.setup {
  opts = {
    -- symbol = "▏",
    symbol = "│",
    options = { try_as_border = true },
  },
}
