local status_ok, nvim_transparent = pcall(require, "nvim-transparent")

if not status_ok then
  return
end

nvim_transparent.setup({
  enable = true
})

