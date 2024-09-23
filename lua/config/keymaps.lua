-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local builtin = require("telescope.builtin")
local discipline = require("nesharim.discipline")
discipline.cowboy()

local keymap = vim.keymap

keymap.set("n", "<leader>sx", builtin.resume, { noremap = true, silent = true, desc = "Resume File lookup" })

-- open file_browser with the path of the current buffer
keymap.set("n", "<leader>sB", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { desc = "Browse Files" })

-- keymap.set("n", "<leader>ht", ":TailwindConcealToggle", { desc = "Toggle tailwind class conceal" })
