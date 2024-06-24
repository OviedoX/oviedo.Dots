-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Tabs
-- keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":bn<Return>", opts)
keymap.set("n", "<s-tab>", ":bp<Return>", opts)
keymap.set("n", "tw", ":bd<Return>", opts)

-- File explorer with NvimTree
-- keymap.set("n", "<Leader>i", ":NvimTreeFindFile<Return>", opts)
-- keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Quick Run
keymap.set("n", "<leader>R", ":QuickRun<Return>", opts)
