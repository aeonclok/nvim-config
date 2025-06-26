-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Move line up
-- vim.keymap.set("n", "<A-u>", function()
--   local count = vim.v.count1
--   vim.cmd("move-" .. (count + 1))
-- end, { noremap = true, silent = true })
--
-- -- Move line down
-- vim.keymap.set("n", "<A-e>", function()
--   local count = vim.v.count1
--   vim.cmd("move+" .. count)
-- end, { noremap = true, silent = true })
--
-- -- Move selection up in visual mode
-- vim.keymap.set("v", "<A-u>", function()
--   local count = vim.v.count1
--   return ":m '<-" .. (count + 1) .. "<CR>gv=gv"
-- end, { noremap = true, silent = true, expr = true })
--
-- -- Move selection down in visual mode
-- vim.keymap.set("v", "<A-e>", function()
--   local count = vim.v.count1
--   return ":m '>+" .. count .. "<CR>gv=gv"
-- end, { noremap = true, silent = true, expr = true })

vim.keymap.set("n", "ä", require("substitute").operator, { noremap = true })
vim.keymap.set("n", "ää", require("substitute").line, { noremap = true })
vim.keymap.set("n", "Ä", require("substitute").eol, { noremap = true })
vim.keymap.set("x", "ä", require("substitute").visual, { noremap = true })

-- Disable arrow keys in normal, visual, and insert modes
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Up>", "<Nop>", opts)
vim.keymap.set("n", "<Down>", "<Nop>", opts)
vim.keymap.set("n", "<Left>", "<Nop>", opts)
vim.keymap.set("n", "<Right>", "<Nop>", opts)

-- vim.keymap.set("i", "<Up>", "<Nop>", opts)
-- vim.keymap.set("i", "<Down>", "<Nop>", opts)
-- vim.keymap.set("i", "<Left>", "<Nop>", opts)
-- vim.keymap.set("i", "<Right>", "<Nop>", opts)
--
-- vim.keymap.set("v", "<Up>", "<Nop>", opts)
-- vim.keymap.set("v", "<Down>", "<Nop>", opts)
-- vim.keymap.set("v", "<Left>", "<Nop>", opts)
-- vim.keymap.set("v", "<Right>", "<Nop>", opts)
-- Helper function to swap two keys and their variants globally, excluding insert, command, and terminal modes
local function swap_keys_with_modifiers(key1, key2)
  local modes = { "n", "v", "o", "x", "s" }

  for _, mode in ipairs(modes) do
    -- Swap lowercase key1 with lowercase key2
    vim.keymap.set(mode, key1, key2, { noremap = true, silent = true })
    vim.keymap.set(mode, key2, key1, { noremap = true, silent = true })

    -- Swap uppercase key1 with uppercase key2
    -- vim.keymap.set(mode, string.upper(key1), string.upper(key2), { noremap = true, silent = true })
    -- vim.keymap.set(mode, string.upper(key2), string.upper(key1), { noremap = true, silent = true })
  end
end
--
-- -- Remap window navigation based on swapped keys
-- vim.keymap.set("n", "<C-n>", "<C-w>h", { noremap = true, silent = true }) -- Left
-- -- vim.keymap.set("n", "<C-n>", "b", { noremap = true, silent = true }) -- Left
-- vim.keymap.set("n", "N", "B", { noremap = true, silent = true }) -- Left
-- vim.keymap.set("n", "<C-i>", "<C-w>l", { noremap = true, silent = true }) -- Right
-- -- vim.keymap.set("n", "<C-i>", "w", { noremap = true, silent = true }) -- Right
-- vim.keymap.set("n", "I", "W", { noremap = true, silent = true }) -- Right
-- vim.keymap.set("n", "<C-e>", "<C-w>j", { noremap = true, silent = true }) -- Down
-- vim.keymap.set("n", "E", "}", { noremap = true, silent = true }) -- Down
-- vim.keymap.set("n", "<C-u>", "<C-w>k", { noremap = true, silent = true }) -- Up
-- vim.keymap.set("n", "U", "{", { noremap = true, silent = true }) -- Up
-- vim.keymap.set("n", "<C-r>", "<C-u>", { noremap = true, silent = true }) -- Up
-- vim.keymap.set("n", "<C-y>", "<C-d>", { noremap = true, silent = true }) -- Up
-- vim.keymap.set("n", "<C-k>", "<C-r>", { noremap = true, silent = true }) -- Up
--
-- swap_keys_with_modifiers("n", "h")
-- swap_keys_with_modifiers("e", "j")
-- swap_keys_with_modifiers("i", "l")
-- swap_keys_with_modifiers("u", "k")
