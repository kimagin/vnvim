return {
  -- HACK: NOTIFY
  {
    "rcarriga/nvim-notify",
    opts = {
      background_color = "#280e32",

      -- Make the notification on bottom
      top_down = false,
    },
  },
  --HACK: INDENT-BLANKLINE

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "LazyFile",
    opts = {
      indent = {
        char = "",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
    main = "ibl",
  },
  --HACK: MINI-INDENTOSCOPE
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      symbol = "│",
      draw = {
        delay = 0,
        animation = require("mini.indentscope").gen_animation.none(),
      },
      options = { try_as_border = true },
    },
  },
  --HACK: NEOTREE
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 30,
      },

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
        eslint = {},
        lua_ls = {},
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- pyright = {},
        -- pylsp = {},
        -- ruff_lsp = {},
        astro = {},
        tsserver = {},
        emmet_ls = {},
      },
    },
  },
}
