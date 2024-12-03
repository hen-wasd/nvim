-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keymaps.lua
local map = vim.keymap.set

-- Mapeamento para executar o comando :FlutterRun com F5
map("n", "<F5>", ":FlutterRun<CR>", { noremap = true, silent = true })
-- Mapeamento para executar o comando :FlutterQuit com Shift + F5
map("n", "<S-F5>", ":FlutterQuit<CR>", { noremap = true, silent = true })
