return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colourscheme
  use {
    'shaunsingh/nord.nvim',
    config = function()
      require('nord').set()
    end
  }


  -- Status Line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require('lualine').setup {
      options = {
          theme = 'nord'
        }
      }
    end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
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
    'glepnir/dashboard-nvim'
  }

  -- Trouble Diagnostics
  use {
    'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup{}
    end
  }


  -- LSP SAGA
  use {
    'glepnir/lspsaga.nvim',
    config = function ()
      require('lspsaga').init_lsp_saga()
    end
  }

  use {
    "steelsojka/pears.nvim",
    config = function()
      require('pears').setup()
    end
  }

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
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup{
        highlight = {
          enable = true
        }
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
  use 'wfxr/minimap.vim'

  -- Floating terminal
  use 'voldikss/vim-floaterm'


  -- LSP Rooter
  use 'ahmedkhalf/lsp-rooter.nvim'

end)
