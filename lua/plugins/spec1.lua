return {
  -- the colorscheme should be available when starting Neovim
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "InsertEnter",
    -- these dependencies will only be loaded when cmp loads
    -- dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
    },
    lazy = false,
    config = function()
      -- ...
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
  },
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
  },
  {
    "windwp/nvim-autopairs",
    lazy = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
  },
  {
    'numToStr/Comment.nvim',
    lazy = false;
  }
}
