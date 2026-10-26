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

return require('packer').startup(function(use) use 'wbthomason/packer.nvim'

  -- Colorschemes
  use 'rebelot/kanagawa.nvim'

  -- Util
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use {
      'nvim-treesitter/nvim-treesitter',
      updater = function() vim.cmd [[ ":TSUpdate" ]] end
  }
  use 'cohama/lexima.vim'

  use {
      'nvim-telescope/telescope.nvim',

      requires = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
      },
  }
  use "tpope/vim-commentary"
  use {
      "stevearc/oil.nvim",
      config = function() require('oil').setup() end,
  }
  use {
      "mason-org/mason.nvim",
  }
  use "neovim/nvim-lspconfig"
  use {
      "mason-org/mason-lspconfig.nvim",
  }
  use {
      "neoclide/coc.nvim",
      branch = "release",
  }
  use "mfussenegger/nvim-dap"
  use {
    "mrcjkb/rustaceanvim",
    ft = "rust",
  }
  use "igorlfs/nvim-dap-view"

  use {
      "romgrk/barbar.nvim",
      requires = {
          "nvim-tree/nvim-web-devicons",
          "lewis6991/gitsigns.nvim",
      }
  }

  use {
      "MeanderingProgrammer/render-markdown.nvim",
      requires = {
          "latex-lsp/tree-sitter-latex",
          "tree-sitter-grammars/tree-sitter-yaml",
          "nvim-web-devicons",
      },
      config = function() 
          require("render-markdown").setup({
            completions = {
                lsp = {
                    enabled = true,
                },
            },
            latex = {
                enabled = true,
                render_modes = false,
                converter = { 'utftex', 'latex2text' },
                inline = true,
                block = false,
                position = 'below',
            },
        }) 
    end
  }

  use {
      "natecraddock/workspaces.nvim",
      config = function() require('workspaces').setup({
          auto_open = true,
          notify_info = true,
          hooks = {
              open = { "Telescope find_files" },
          }
      }) end
  }

  use "lervag/wiki.vim"

  use {
      "junegunn/limelight.vim"
  }

  use "slint-ui/vim-slint"
 

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
