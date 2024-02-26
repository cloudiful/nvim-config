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

-- use j to jump
map({ "n", "x", "o" }, "j", function()
  require("flash").jump()
end, { desc = "Flash" })
map({ "n", "x", "o" }, "J", function()
  require("flash").treesitter()
end, { desc = "Flash Treesitter" })

-- use wasd to move around like a game
map({ "n", "v" }, "w", "k")
map({ "n", "v" }, "s", "j")
map({ "n", "v" }, "a", "h")
map({ "n", "v" }, "d", "l")

-- use k to delete
map({ "n", "v" }, "k", "d")
map("n", "kk", "dd")

-- use q to insert
map({ "n", "v" }, "q", "i")
map({ "n", "v" }, "e", "a")
