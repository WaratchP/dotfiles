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

-- Settings --

keymap("n", "<leader>si", ":edit ~/.config/nvim/init.lua<CR>", opts)
keymap("n", "<leader>sp", ":edit ~/.config/nvim/lua/user/plugins.lua<CR>", opts)
keymap("n", "<leader>sk", ":edit ~/.config/nvim/lua/user/keymaps.lua<CR>", opts)

-- Plugins --

-- Packer
keymap("n", "<leader>pu", ":PackerUpdate<CR>", opts)
keymap("n", "<leader>pc", ":PackerClean<CR>", opts)

-- Alpha
keymap("n", "<leader>ao", ":Alpha<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":NvimTreeFocus<CR>", opts)

-- Telescope
keymap("n", "<leader>tf", ":Telescope find_files<CR>", opts)
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

-- Instant-Markdown
keymap("n", "<leader>mu", ":InstantMarkdownPreview<CR>", opts)
keymap("n", "<leader>md", ":InstantMarkdownStop<CR>", opts)

-- Vimwiki
keymap("n", "<leader>ws", ":VimwikiSearchTags ", opts)
keymap("n", "<leader>wl", ":lopen<CR> ", opts)

