local status_ok, _ = pcall(require, "instant-markdown")
if not status_ok then
  return
end

vim.g.instant_markdown_slow = 0
vim.g.instant_markdown_autostart = 0
