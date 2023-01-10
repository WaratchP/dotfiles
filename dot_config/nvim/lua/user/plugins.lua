local fn = vim.fn

-- Autoinstalls packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end


-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install plugins
return packer.startup(function(use)
  -- Packer
  use { "wbthomason/packer.nvim" }

  -- Plenary & Telescope
  use { "nvim-lua/plenary.nvim" }
  use { "nvim-telescope/telescope.nvim" }

  -- CMP plugins
  use { "hrsh7th/nvim-cmp"} -- The completion plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
  use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }

  -- LSP
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use { "neovim/nvim-lspconfig" }
  use { "RRethy/vim-illuminate" }

  -- DAP
  use { "mfussenegger/nvim-dap", commit = "014ebd53612cfd42ac8c131e6cec7c194572f21d" }
  use { "rcarriga/nvim-dap-ui", commit = "d76d6594374fb54abf2d94d6a320f3fd6e9bb2f7" }

  -- Linter, Formatter
  use { "jose-elias-alvarez/null-ls.nvim" }

  -- Snippets
  use { "L3MON4D3/LuaSnip" } --snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }

  use { "JoosepAlviste/nvim-ts-context-commentstring"}

  -- Init page
  use { "goolord/alpha-nvim" }
--
--  -- IDE-fying
  use { "kyazdani42/nvim-tree.lua" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "akinsho/bufferline.nvim" }
  use { "nvim-lualine/lualine.nvim" }
  use { "lewis6991/gitsigns.nvim" }
  use { "ap/vim-css-color" }

  -- Neovim-Tmux integration
  use { "alexghergh/nvim-tmux-navigation" }

  -- Note-taking
  use { "vimwiki/vimwiki" }

  -- Quality of life
  use { "windwp/nvim-autopairs" }
  use { "numToStr/Comment.nvim" }
  use { "moll/vim-bbye" }
  use { "akinsho/toggleterm.nvim" }
  use { "ahmedkhalf/project.nvim" }
  use { "lewis6991/impatient.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }

  -- Colorscheme
  use { "eddyekofo94/gruvbox-flat.nvim" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

