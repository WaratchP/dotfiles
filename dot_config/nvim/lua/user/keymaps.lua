-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Better splits
keymap("n", "vv", "<C-w>v", opts)
keymap("n", "ss", "<C-w>s", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<leader>ti", ":pu=strftime('%Y-%m-%d')<CR>", opts)

-- Config --

keymap("n", "<leader>ci", ":edit ~/.config/nvim/init.lua<CR>", opts)
keymap("n", "<leader>cp", ":edit ~/.config/nvim/lua/user/plugins.lua<CR>", opts)
keymap("n", "<leader>ck", ":edit ~/.config/nvim/lua/user/keymaps.lua<CR>", opts)

-- Plugins --

-- Packer
keymap("n", "<leader>pu", ":PackerUpdate<CR>", opts)
keymap("n", "<leader>pc", ":PackerClean<CR>", opts)

-- Alpha
keymap("n", "<leader>sp", ":Alpha<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":NvimTreeFocus<CR>", opts)

-- Undotree
keymap("n", "<leader>uf", ":UndotreeShow<CR>:UndotreeFocus<CR>", opts)
keymap("n", "<leader>ue", ":UndotreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>tf", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>tr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>tt", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>tp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>tb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Harpoon
keymap("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>")
keymap("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
keymap("n", "<C-1>", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>")
keymap("n", "<C-2>", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>")
keymap("n", "<C-3>", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>")
keymap("n", "<C-4>", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>")

-- Vimwiki
keymap("n", "<leader>ws", ":VimwikiSearchTags ", opts)
keymap("n", "<leader>wl", ":lopen<CR> ", opts)

-- Cheatsheet
keymap("n", "<leader>c?", ":Cheatsheet<cr>", opts)
keymap("n", "<leader>ce", ":CheatsheetEdit<cr>", opts)


-- Telekasten
keymap("n", "<leader>zn", "<cmd>:lua require('telekasten').new_note()<cr>", opts)
keymap("n", "<leader>zf", "<cmd>:lua require('telekasten').find_notes()<cr>", opts)
keymap("n", "<leader>zd", "<cmd>:lua require('telekasten').find_daily_notes()<cr>", opts)
keymap("n", "<leader>zW", "<cmd>:lua require('telekasten').find_weekly_notes()<cr>", opts)
keymap("n", "<leader>zg", "<cmd>:lua require('telekasten').search_notes()<cr>", opts)
keymap("n", "<leader>zz", "<cmd>:lua require('telekasten').follow_link()<cr>", opts)
keymap("n", "<leader>zT", "<cmd>:lua require('telekasten').goto_today()<cr>", opts)
keymap("n", "<leader>zW", "<cmd>:lua require('telekasten').goto_thisweek()<cr>", opts)
keymap("n", "<leader>zc", "<cmd>:lua require('telekasten').show_calendar()<cr>", opts)
keymap("n", "<leader>zi", "<cmd>:lua require('telekasten').paste_img_and_link()<cr>", opts)
keymap("n", "<leader>zt", "<cmd>:lua require('telekasten').toggle_todo()<cr>", opts)
keymap("n", "<leader>zt", "<cmd>:lua require('telekasten').toggle_todo({ v = true})<cr>", opts)
keymap("n", "<leader>zb", "<cmd>:lua require('telekasten').show_backlinks()<cr>", opts)
keymap("n", "<leader>zF", "<cmd>:lua require('telekasten').find_friends()<cr>", opts)
keymap("n", "<leader>zI", "<cmd>:lua require('telekasten').insert_img_link({ i=true })<cr>", opts)
keymap("n", "<leader>zp", "<cmd>:lua require('telekasten').preview_img()<cr>", opts)
keymap("n", "<leader>zm", "<cmd>:lua require('telekasten').browse_media()<cr>", opts)
keymap("n", "<leader>z", "<cmd>:lua require('telekasten').panel()<cr>", opts)
