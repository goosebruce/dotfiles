-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
-- vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("n", "X", '"_X', opts)
