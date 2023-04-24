local status, flit = pcall(require, "flit")
if not status then
  vim.notify "Not found flit"
  return
end

local status_, leap = pcall(require, "leap")
if not status_ then
  return
end

leap.add_default_mappings()
leap.opts.highlight_unlabeled_phase_one_targets = true
leap.init_highlight(true)

flit.setup {
  keys = { f = "f", F = "F", t = "t", T = "T" },
  labeled_modes = "v",
  multiline = true,
  opts = {},
}
