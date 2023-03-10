local packer_present, packer = pcall(require, "packer")

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Plugin/package management for Neovim
  use "wbthomason/packer.nvim"
    use {
      "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
  use "lukas-reineke/indent-blankline.nvim"

  -- Rose pine colorscheme
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        require("rose-pine").setup({
          disable_italics = true
      })
        vim.cmd('colorscheme rose-pine')
    end
  }) 

  -- Comment code
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  -- Neovim statusline written in Lua
  use "nvim-lualine/lualine.nvim"

  -- Improve startup time for Neovim
  use "lewis6991/impatient.nvim"

  -- Neovim LSP
  use "neovim/nvim-lspconfig"

  -- Gruvbox colorscheme
  use "ellisonleao/gruvbox.nvim"

  -- Lua module for asynchronous programming using coroutines
  use "nvim-lua/plenary.nvim"

  -- Provides the same icons as well as colors for each icon
  -- use "kyazdani42/nvim-web-devicons"

  -- A Git wrapper so awesome, it should be illegal 
  use "tpope/vim-fugitive"

  -- Automatically set up lspconfig for rust-analyzer
  use "simrat39/rust-tools.nvim"

  -- Easily install and manage LSP servers, DAP servers, linters, and formatters
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  --  Highly extendable fuzzy finder for files
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Autopairs and autotag for Neovim
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- Completion engine for neovim written in Lua
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lsp-signature-help"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/vim-vsnip"
  use "L3MON4D3/LuaSnip"

  -- treesitter-based highlighting
  use ("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
