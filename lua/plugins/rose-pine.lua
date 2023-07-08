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
        MiniIndentscopeSymbol = { fg = "#5248c7" },
        Pmenu = { bg = "#470a69", blend = 20 },
        PmenuSel = { bg = "#470a69", blend = 50 },
      },
    },
  },
}
