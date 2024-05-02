local present, leap = pcall(require, "leap")

if not present then
  return
end

leap.add_default_mappings(true) --强制覆盖其他按键，否则可能不工作
