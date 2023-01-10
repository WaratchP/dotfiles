local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

-- Treesitter setup
configs.setup({
	ensure_installed = {
		"bash", 
		"dockerfile", 
		"yaml", 
		"json", 
		"javascript", 
		"typescript", 
		"markdown", 
		"c", 
		"lua", 
		"rust", 
		"python", 
		"css"
	},

	highlight = {
		enable = true,
		disable = { 
			"css"
		}, 
	},

	autopairs = {
		enable = true,
	},

	indent = {
		enable = true, 
		disable = { 
			"css" 
		},
	},
})

-- Lua workaround
vim.api.nvim_create_autocmd({ "BufEnter"}, {
    pattern = { "*.lua" },
    command = "TSDisable highlight",
})
