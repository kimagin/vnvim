return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    event = "VimEnter",
    opts = {
      variant = "main",
      dark_variant = "main",
      disable_background = true,
      disable_float_background = true,
      groups = {
        -- background = "iris",
      },
      highlight_groups = {
        MiniIndentscopeSymbol = { fg = "#6b3e21" },
        Pmenu = { bg = "#2e5952", blend = 90 },
        PmenuSel = { bg = "#417f75", blend = 90 },
      },
    },
  },
}
