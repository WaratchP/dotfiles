local harpoon_mark_ok, mark = pcall(require, "harpoon.mark")
if not harpoon_mark_ok then
  return
end

local harpoon_ui_ok, ui = pcall(require, "harpoon.ui")
if not harpoon_mark_ok then
  return
end

--vim.keymap.set("n", "<leader>ha", mark.add_file)
--vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu)

--vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) end)
--vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end)

