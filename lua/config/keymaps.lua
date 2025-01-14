-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keymaps.lua
local map = vim.keymap.set

map("x", "I", ":s/\\(\\s*\\)/\\0/ | nohl" .. ("<left>"):rep(8))

map("x", "A", ":s/$// | nohl" .. ("<left>"):rep(8))
