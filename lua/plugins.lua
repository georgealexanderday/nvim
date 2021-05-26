local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

---@diagnostic disable: undefined-global
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colourscheme
  use {
    'folke/tokyonight.nvim',
    config = function()
      vim.g.tokyonight_style = "storm"
      vim.g.tokyonight_italic_functions = true
      vim.cmd('colorscheme tokyonight')
    end
  }

  -- Status Line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require('lualine').setup {
      options = {
          theme = 'tokyonight'
        }
      }
    end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }

  -- TREE
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Which Key
  use {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup{}
    end
  }

  -- Comments
  use {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup()
    end
  }

  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    config = function()
      vim.g.dashboard_default_executive = 'telescope'
      vim.g.dashboard_custom_section = {
          a = {description = {'  Find File          '}, command = 'Telescope find_files'},
          b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
          c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
          d = {description = {'  NVIM               '}, command = ':e ~/.config/nvim/lua/plugins.lua'},
          e = {description = {'  NIX                '}, command = ':e ~/.config/nixpkgs/home.nix'},
      }
      vim.g.dashboard_custom_footer = {}
      vim.g.dashboard_custom_header = {
        '',
        '',
        '',
        '   ███▄    █  ██▓  ▄████  ██░ ██ ▄▄▄█████▓  █████▒ █    ██  ██▀███  ▓██   ██▓  ▄████ ',
        '   ██ ▀█   █ ▓██▒ ██▒ ▀█▒▓██░ ██▒▓  ██▒ ▓▒▓██   ▒  ██  ▓██▒▓██ ▒ ██▒ ▒██  ██▒ ██▒ ▀█▒',
        '  ▓██  ▀█ ██▒▒██▒▒██░▄▄▄░▒██▀▀██░▒ ▓██░ ▒░▒████ ░ ▓██  ▒██░▓██ ░▄█ ▒  ▒██ ██░▒██░▄▄▄░',
        '  ▓██▒  ▐▌██▒░██░░▓█  ██▓░▓█ ░██ ░ ▓██▓ ░ ░▓█▒  ░ ▓▓█  ░██░▒██▀▀█▄    ░ ▐██▓░░▓█  ██▓',
        '  ▒██░   ▓██░░██░░▒▓███▀▒░▓█▒░██▓  ▒██▒ ░ ░▒█░    ▒▒█████▓ ░██▓ ▒██▒  ░ ██▒▓░░▒▓███▀▒',
        '  ░ ▒░   ▒ ▒ ░▓   ░▒   ▒  ▒ ░░▒░▒  ▒ ░░    ▒ ░    ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░   ██▒▒▒  ░▒   ▒ ',
        '  ░ ░░   ░ ▒░ ▒ ░  ░   ░  ▒ ░▒░ ░    ░     ░      ░░▒░ ░ ░   ░▒ ░ ▒░ ▓██ ░▒░   ░   ░ ',
        '     ░   ░ ░  ▒ ░░ ░   ░  ░  ░░ ░  ░       ░ ░     ░░░ ░ ░   ░░   ░  ▒ ▒ ░░  ░ ░   ░ ',
        '           ░  ░        ░  ░  ░  ░                    ░        ░      ░ ░           ░ ',
        '                                                                     ░ ░             ',
        '',
        '',
        '                                       N V I M                                       ',
        '',
        '',
        '',
      }

      end
  }

  -- Trouble Diagnostics
  use {
    'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup{}
    end
  }

  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup{}
    end
  }


  -- LSP SAGA
  use {
    'glepnir/lspsaga.nvim',
    config = function ()
      require('lspsaga').init_lsp_saga()
    end
  }

  -- Surround
  use 'tpope/vim-surround'

  -- BufferLine
  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('bufferline').setup{}
    end
  }

  -- TreeSitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup {
        highlight = {
          enable = true,
        },
      }
    end
  }

  -- Native LSP
  use {
    'neovim/nvim-lspconfig'
  }

  -- LSP Installer
  use {
    'kabouzeid/nvim-lspinstall'
  }

  -- ZenMode
  use {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup{}
    end
  }

  use {
    'hrsh7th/vim-vsnip'
  }
  use {
    'hrsh7th/vim-vsnip-integ'
  }

  -- Auto Completion
  use {
    'hrsh7th/nvim-compe',
    config = function()
      require('compe').setup {
        enabled = true;
        autocomplete = true;
        debug = false;
        min_length = 1;
        preselect = 'enable';
        throttle_time = 80;
        source_timeout = 200;
        incomplete_delay = 400;
        max_abbr_width = 100;
        max_kind_width = 100;
        max_menu_width = 100;
        documentation = true;

        source = {
          path = true;
          buffer = true;
          calc = true;
          nvim_lsp = true;
          nvim_lua = true;
          vsnip = true;
          ultisnips = true;
        };
      }
    end
  }

  -- Indent Blankline
  use 'lukas-reineke/indent-blankline.nvim'

  -- Minimap
  -- use {
  --   'wfxr/minimap.vim',
  --   config = function()
  --     vim.g.minimap_auto_start = 0
  --     vim.g.minimap_auto_start_win_enter = 0
  --   end
  -- }

  -- Floating terminal
  use {
    'voldikss/vim-floaterm',
    config = function()
      vim.g.floaterm_autoinsert = false
      vim.g.floaterm_height = 0.8
      vim.g.floaterm_width = 0.3
      vim.g.floaterm_position = 'right'
      vim.g.floaterm_wintype = 'vsplit'
      vim.api.nvim_command('au TermOpen * setlocal nonumber norelativenumber')
    end
  }

  -- LSP Rooter
  use 'ahmedkhalf/lsp-rooter.nvim'

end)
