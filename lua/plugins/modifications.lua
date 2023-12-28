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
      close_if_last_window = true,
      window = {
        width = 30,
        position = "left",
      },

      popup_border_style = "rounded",
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" },

      filesystem = {
        filtered_items = {
          -- hide_dotfiles = false,
          visible = true,
          hide_by_name = {
            "node_modules",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            ".env",
            ".eslintrc.json",
            ".eslintrc.js",
            ".prettierrc.json",
            ".prettierrc.js",
          },
        },
      },
      default_component_configs = {
        icon = {
          folder_empty = "󰉖",
        },
      },

      follow_current_file = {
        enabled = true,
      },
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
  -- {
  --   "echasnovski/mini.bufremove",
  --   keys = {
  --     {
  --       "<C-q>",
  --       nowait = true,
  --       noremap = false,
  --       function()
  --         require("mini.bufremove").delete(0, false)
  --       end,
  --       desc = "Delete Buffer",
  --     },
  --     {
  --       "<C-Q>",
  --       function()
  --         require("mini.bufremove").delete(0, false)
  --       end,
  --       desc = "Delete Buffer (Force)",
  --     },
  --   },
  -- },
  --HACK: TREESITTER
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "javascript",
        "css",
        "typescript",
        "python",
        "html",
        "lua",
        "luadoc",
        "json",
        "jsonc",
        "gitignore",
        "markdown",
        "markdown_inline",
        "vim",
        "yaml",
        "glsl",
        "astro",
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
        -- eslint = {
        --   settings = {
        --     workingDirectory = { mode = "auto" },
        --   },
        -- },
        lua_ls = {},
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- pyright = {},
        -- pylsp = {},
        -- ruff_lsp = {},
        astro = {},
        -- tsserver = {
        --   filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" },
        --   root_dir = function()
        --     return vim.loop.cwd()
        --   end,
        -- },
        html = {
          filetypes = { "html", "astro", "handlebars", "hbs" },
        },
        emmet_language_server = {},
        jsonls = {},
        -- quick_lint_js = {},

        -- emmet_ls = {},
      },
    },
  },
  --HACK:Flash
  {
    "folke/flash.nvim",
    --vscode = true,
  },
}
