-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local os = vim.loop.os_uname().sysname

-- copy
if os == "Darwin" then
  -- on macOS use command+c to copy
  map("v", "<D-c>", "y")
elseif os:find("Windows") then
  -- on Windows use control+c to copy
  map("v", "<C-c>", "y")
end
