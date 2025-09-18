-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.g.autoformat=false

local opt = vim.opt

opt.tabstop = 4       -- A TAB character looks like 4 spaces
opt.shiftwidth = 4    -- Indents will be 4 spaces
opt.expandtab = true  -- Pressing the TAB key inserts spaces instead of a TAB character
