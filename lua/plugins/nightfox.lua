return {
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        transparent = true,
        styles = {
          comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
          conditionals = "NONE",
          constants = "NONE",
          functions = "NONE",
          keywords = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
          variables = "NONE",
        },
        groups = {
          TelescopeBorder = { fg = "#364962" },
          TelescopeSelection = { bg = "#1e2932" },
          LazyNormal = { bg = "#11111b" },
          WhichKeyFloat = { bg = "#11111b" },
          NotifyWarnBorder = { fg = "#c29452" },
          NotifyWARNTitle = { fg = "#c29452" },
          NotifyWARNIcon = { fg = "#c29452" },
          NotifyWARNTitle = { fg = "#c29452" },
          -- DashboardHeader = { fg = "#5a90a2" },
          DashboardFooter = { fg = "#81b29a" },
        },
      },
      -- fox = "nordfox",
      -- transparent = true,
      -- terminal_colors = true,
      -- styles = {
      --
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
      -- colors = {
      --   red = "#145000",
      -- },
    },
    groups = {
      nordfox = {
        LazyNormal = { bg = "#11111b" },
      },
    },
  },
}
