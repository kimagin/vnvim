-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additi

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.clipboard = {
  name = "xsel",
  copy = {
    ["+"] = "xsel --clipboard --input",
    ["*"] = "xsel --clipboard --input",
  },
  paste = {
    ["+"] = "xsel --clipboard --output",
    ["*"] = "xsel --clipboard --output",
  },
  cache_enabled = 0,
}

-- Local Modifications
local opt = vim.opt

opt.termguicolors = true
opt.pumblend = 10
opt.winblend = 0
opt.fillchars = { eob = " " } --disable the ~
