return {
  -- HACK: NOTIFY
  { "rcarriga/nvim-notify", opts = {
    background_color = "#280e32",
  } },
  --HACK: EDGY
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = function()
      local opts = {
        animate = { enabled = false },
        bottom = {
          {
            ft = "lazyterm",
            title = "Terminal",
            size = { height = 0.4 },
            filter = function(buf)
              return not vim.b[buf].lazyterm_cmd
            end,
          },
          "Trouble",
          { ft = "qf", title = "QuickFix" },
          {
            ft = "help",
            size = { height = 30 },
            -- don't open help files in edgy that we're editing
            filter = function(buf)
              return vim.bo[buf].buftype == "help"
            end,
          },
          { ft = "spectre_panel", size = { height = 0.4 } },
          { title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
        },
        left = {
          {
            title = "Neo-Tree",
            ft = "neo-tree",
            filter = function(buf)
              return vim.b[buf].neo_tree_source == "filesystem"
            end,
            pinned = true,
            open = function()
              vim.api.nvim_input("<esc><space>e")
            end,
            size = { height = 0.5 },
          },

          "neo-tree",
        },
      }
      local Util = require("lazyvim.util")
      if Util.has("symbols-outline.nvim") then
        table.insert(opts.left, {
          title = "Outline",
          ft = "Outline",
          pinned = true,
          open = "SymbolsOutline",
        })
      end
      return opts
    end,
  },
  --HACK: INDENT-BLANKLINE
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      char = "",
    },
  },
  --HACK: MINI-INDENTOSCOPE
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
  },
  --HACK: NEOTREE
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
      filesystem = {
        filtered_items = {
          -- hide_dotfiles = false,
          hide_by_name = {
            "node_modules",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            ".env",
          },
        },
      },
      default_component_configs = {
        icon = {
          folder_empty = "󰉖",
        },
      },
      follow_current_file = false,
    },
  },
  --HACK:WEBDEV-ICONS
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override_by_extension = {
        ["astro"] = {
          icon = "󰑣",
          color = "#e3492b",
          name = "Astro",
        },
      },
    },
  },
  --HACK: MINI-BUFFERMOVE
  {
    "echasnovski/mini.bufremove",
    keys = {
      {
        "<C-q>",
        nowait = true,
        noremap = false,
        function()
          require("mini.bufremove").delete(0, false)
        end,
        desc = "Delete Buffer",
      },
      {
        "<C-Q",
        function()
          require("mini.bufremove").delete(0, false)
        end,
        desc = "Delete Buffer (Force)",
      },
    },
  },
  --HACK: TREESITTER
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "python",
      })
    end,
  },
  --HACK: LSPCONFIG
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- pyright = {},
        pylsp = {},
        ruff_lsp = {},
        emmet_ls = {},
      },
    },
  },
}
