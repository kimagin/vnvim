return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {--[[ things you want to change go here]]
      size = 15,
      open_mapping = [[<c-\>]],
      shade_terminals = false,
      start_in_insert = true,
      -- terminal_mappings = true,
      -- insert_mappings = true,
      autochdir = true,
      -- persist_size = true,
      -- persist_mode = true,
      close_on_exit = false,
      direction = "horizontal",
      auto_scroll = true,
      float_opts = {
        border = "curved",
      },
    },
  },
}
