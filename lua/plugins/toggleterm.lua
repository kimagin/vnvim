return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {--[[ things you want to change go here]]
      size = vim.o.columns * 0.1,
      open_mapping = [[<c-\>]],
      -- shade_terminals = false,
      -- start_in_insert = true,
      -- terminal_mappings = true,
      -- insert_mappings = true,
      autochdir = true,
      -- persist_size = true,
      persist_mode = false,
      close_on_exit = true,
      -- direction = "horizontal",
      -- auto_scroll = true,
      -- float_opts = {
      --   border = "border",
      -- },
    },
  },
}
