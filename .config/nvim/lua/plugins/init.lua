return {
  {
    'rebelot/terminal.nvim',
    config = function()
      require("terminal").setup()
    end
  },
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    ensure_installed = "pyright",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "mypy",
        "ruff",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css", "python", "json", "yaml"
      },
    },
  },
  {
    "okuuva/auto-save.nvim",
    version = '^1.0.0',                       -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
    cmd = "ASToggle",                         -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    lazy = false,
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  { 'akinsho/toggleterm.nvim', version = "*", config = true, lazy = false },
  {
    "cuducos/yaml.nvim",
    ft = { "yaml" }, -- optional
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
    },
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    }
  }
}

-- {
--   'nvimtools/none-ls.nvim',
--   ft = {"python"},
--   config = function()
--     local null_ls = require("null-ls")
--     null_ls.setup({
--       debug = true,
--       sources = {
--         null_ls.builtins.diagnostics.ruff,
--       },
--     })
--   end,
-- },
-- }
--
-- {
--   -- Surround
--   "echasnovski/mini.surround",
--   event = "VeryLazy",
--   opts = {
--     mappings = {
--       add = "gsa", -- Add surrounding in Normal and Vsual modes
--       delete = "ds", -- Delete surroundng
--       replace = "cs", -- Replace surrounding
--       find = "gsf", -- Find surrounding (to the right)
--       -- find_left = "gsF", -- Find surrounding (to the left)
--       -- highlight = "gsh", -- Highlight surrounding
--       -- update_n_lines = "gsn", -- Update `n_lines`j
--     },
--   },
--   config = function(_, opts)
--     -- use gz mappings instead of s to prevent conflict with leap
--     require("mini.surround").setup(opts)
--   end,
-- },
