-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ToggleTerm
--  -- Import terminal type
-- local Terminal = require("toggleterm.terminal").Terminal

--  -- Close any open ToggleTerm
vim.keymap.set("t", "<M-;>", "<Cmd>ToggleTermToggleAll<CR>", { desc = "Toggle terminal (From within terminal)" })

--  -- Default terminal
vim.keymap.set({ "n", "v" }, "<M-;>", "<Cmd>1ToggleTerm direction=float name=float<CR>", { desc = "Toggle terminal" })
-- local default_terminal = Terminal:new({
--   -- cmd = "",
--   count = 1,
--   display_name = "Standard Terminal",
--   direction = "float",
--   hidden = true,
-- })
--
-- vim.keymap.set({ "n", "v", "t" }, "<M-;>", function()
--   default_terminal:toggle()
-- end, { desc = "Toggle terminal" })

-- Comment toggles
vim.keymap.set("n", "<Leader>/", "<Cmd>normal >>0gcc<<<CR>", { desc = "Toggle comment" })
vim.keymap.set("v", "<Leader>/", "<Cmd>normal 0>gvgcgv<gv<CR>", { desc = "Toggle comment (Multi-line)" })

-- Search tools
vim.keymap.set({ "n", "v" }, "<Leader>G", LazyVim.pick("grep"), { desc = "Grep (Root Dir)" })

-- Closing buffers and windows
vim.keymap.set({ "n", "v" }, "<Leader>x", function()
  Snacks.bufdelete()
end, { desc = "Close buffer" })
vim.keymap.set({ "n", "v" }, "<Leader>q", "<Cmd>q<CR>", { desc = "Close window" })
vim.keymap.set({ "n", "v" }, "<Leader>qq", "<Cmd>q!<CR>", { desc = "Force close window" })
vim.keymap.set({ "n", "v" }, "<Leader>Q", "<Cmd>qa!<CR>", { desc = "Force close all windows" })

-- Tab key behavior
-- -- Additional tab behavior configured in plugins/editor/supertab.lua
vim.keymap.set("n", "<Tab>", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>bprev<CR>", { desc = "Previous buffer" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })
vim.keymap.set("i", "<S-Tab>", "<BS>", { desc = "Mimic detab behavior in insert mode" })

-- File system tools
-- -- Change Snacks file explorer open toggle to open/focus
local explorer_open = false
vim.keymap.set({ "n", "v" }, "<Leader>e", function()
  if not explorer_open then
    explorer_open = true
    Snacks.explorer.open()
  else
    vim.cmd("windo 0")
  end
end, { desc = "Open/focus Snacks explorer" })
vim.keymap.set({ "n", "v" }, "<Leader>E", function()
  if explorer_open then
    explorer_open = false
    Snacks.explorer.open()
  end
end, { desc = "Close Snacks explorer" })

-- -- Open Oil
-- TODO: Make <c-o> close Oil as well
vim.keymap.set("n", "<Leader>o", "<Cmd>Oil --float .<CR>", { desc = "Open Oil float" })
