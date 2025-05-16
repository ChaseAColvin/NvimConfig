-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Timeout settings for key combinations
opt.timeoutlen = 250
opt.ttimeoutlen = 15

-- Clipboard register
-- opt.clipboard = "unnamedplus"
-- vim.opt.clipboard = "xsel" -- unsure if this is correct.  Need to test in WSL

-- Basic UI settings
opt.relativenumber = false
opt.pumblend = 0
opt.winblend = 0
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- opt.number = true
-- opt.tabstop = 2
-- opt.shiftwidth = 2
-- vim.o.winborder = "rounded"
vim.g.material_style = "deep ocean"
