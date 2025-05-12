-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "i", "v" }, "jk", "<Esc>", { desc = "Escape" })
vim.keymap.set("n", "jk", "<Cmd>noh<CR>", { desc = "Clear highlighting" })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("i", "<S-Tab>", "<BS>", { desc = "Mimic detab behavior in insert mode" })
-- vim.keymap.set({ "n", "v" }, "<C-s>", "<Cmd>w<CR>", { desc = "Write buffer (Save)" })
-- vim.keymap.set({ "n", "v" }, "<C-l>", "<C-w>l", { desc = "Move to the window to the right" })
-- vim.keymap.set({ "n", "v" }, "<C-h>", "<C-w>h", { desc = "Move to the window to the left" })
-- vim.keymap.set({ "n", "v" }, "<C-k>", "<C-w>k", { desc = "Move to the window above" })
-- vim.keymap.set({ "n", "v" }, "<C-j>", "<C-w>j", { desc = "Move to the window below" })
-- vim.keymap.set({ "n", "v" }, "<M-j>", "ddp", { desc = "Move the current line down" })
-- vim.keymap.set({ "n", "v" }, "<M-k>", "ddkP", { desc = "Move the current line up" })
vim.keymap.set(
  { "n", "v", "t" },
  "<M-;>",
  "<Cmd>ToggleTerm direction=float name=float<CR>",
  { desc = "Toggle terminal" }
)
vim.keymap.set(
  "t",
  "<M-;>",
  "<Cmd>ToggleTerm direction=float name=float<CR>",
  { desc = "Toggle terminal (From within terminal)" }
)
vim.keymap.set("n", "<Leader>/", "<Cmd>normal >>0gcc<<<CR>", { desc = "Toggle comment" })
vim.keymap.set("v", "<Leader>/", "<Cmd>normal 0>gvgcgv<gv<CR>", { desc = "Toggle comment (Multi-line)" })
vim.keymap.set({ "n", "v" }, "<Leader>G", LazyVim.pick("grep"), { desc = "Grep (Root Dir)" })
-- vim.keymap.set({ "n", "v" }, "<Leader>x", "<Cmd>bd<CR>", { desc = "Close buffer" })
vim.keymap.set({ "n", "v" }, "<Leader>x", function()
  Snacks.bufdelete()
end, { desc = "Close buffer" })
vim.keymap.set({ "n", "v" }, "<Leader>q", "<Cmd>q<CR>", { desc = "Close window" })
vim.keymap.set({ "n", "v" }, "<Leader>qq", "<Cmd>q!<CR>", { desc = "Force close window" })
vim.keymap.set({ "n", "v" }, "<Leader>Q", "<Cmd>qa!<CR>", { desc = "Force close all windows" })
vim.keymap.set({ "n", "v" }, "<Tab>", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set({ "n", "v" }, "<S-Tab>", "<Cmd>bprev<CR>", { desc = "Previous buffer" })
vim.keymap.set({ "n", "v" }, "<Leader>r", "<Cmd>%s/", { desc = "Search and replace" })
vim.keymap.set("n", "<Leader>o", "<Cmd>Oil --float .<CR>", { desc = "Open Oil float" })
