local present, noice = pcall(require, "noice")

if not present then
  return
end

noice.setup({
  lsp = {
    signature = {
      enabled = false,
      auto_open = {
        enabled = false,
        trigger = true, -- Automatically show signature help when typing a trigger character from the LSP
        luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes
        throttle = 50, -- Debounce lsp signature help request by 50ms
      },
   },
   hover = {
     enabled = false,
   },
 },
})
