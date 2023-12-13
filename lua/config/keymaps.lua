-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

--Insert Mode
map("i", "jj", "<ESC>", { desc = "Switch to normal Mode" })

-- Normal Mode
map("n", "<C-a>", "ggVG", { desc = "Switch to normal Mode" })
-- map("n", "ss", "<cmd>:w<CR>", { desc = "Save current File" })

-- Move Tabs
map("n", "<Tab>", "<cmd>:bn<CR>", { noremap = true, desc = "Move Tabs to right" })
map("n", "<S-Tab>", "<cmd>:bp<CR>", { noremap = true, desc = "Move Tabs to left" })

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>fp", "<Cmd>:Telescope projects<CR>", { noremap = true, silent = true })

-- Unregister ciw from the clipboard
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true })

-- Running Python
-- map("n", "<leader>pp", "<cmd>:split term://python3 %<CR>", { desc = "Run Python" })
-- map(
--   "n",
--   "<leader>np",
--   "<cmd>:belowright 20split term://nodemon --exec 'python3' % -q<CR>",
--   { desc = "Run Nodemon [Python]" }
-- )

-- Running JS
-- map(
--   "n",
--   "<leader>nj",
--   "<cmd>:belowright 20split term://nodemon --exec 'nodemon' % -q<CR>",
--   { desc = "Run Nodemon [Java Script]" }
-- )
--

--PERF: Buffer
map("n", "qq", "<cmd>:w | bdelete<CR>", { noremap = true, silent = true, desc = "Delete Current Buffer" })
map("n", "<leader>ww", "<cmd>:w<CR>", { noremap = true, desc = "Save Current Buffer" })
map("n", "<leader>qq", "<cmd>:wa<CR> | <cmd>:qall!<CR>", { noremap = true, silent = true, desc = "Save All and Quit" })

-- map("n", "qq", "<cmd>:w<CR> |<cmd>:bdelete!<CR>", { noremap = true, desc = "Delete Current Buffer" })
