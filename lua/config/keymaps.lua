-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del
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
-- unmap these three keymap to make d motion instant
unmap("n", "diÞ")
unmap("n", "daÞ")
unmap("n", "dÞ")

-- use WASD to move quickly
map({ "n", "v" }, "W", "<C-b>") -- page up
map({ "n", "v" }, "S", "<C-f>") -- page down
map({ "n", "v" }, "A", "ge") -- move to left word's end
map({ "n", "v" }, "D", "e") -- move to right word's end

-- use k to delete
map({ "n", "v" }, "k", "d")
map("n", "kk", "dd") -- delete line

-- use q e to insert append like playing rainbow six siege :)
map({ "n", "v" }, "q", "i") -- q to insert
map({ "n", "v" }, "e", "a") -- e to append

-- use ` to go to the start of word | 0 to EOL
map({ "n", "v" }, "`", "^")
map({ "n", "v" }, "0", "$")
