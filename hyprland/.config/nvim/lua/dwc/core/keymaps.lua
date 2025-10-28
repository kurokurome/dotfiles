vim.g.mapleader = " "

local keymap = vim.keymap

-- Highlight
keymap.set("n", "<leader>hc", ":nohl<CR>", { desc = "Clear highlights" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all " })

-- Save current file
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save current file " })

-- Increment/decrement
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number on cursor" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number on cursor" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Live server
keymap.set("n", "<leader>ls", "<cmd>LiveServerStart<CR>", { desc = "Start Live-Server " })
keymap.set("n", "<leader>lp", "<cmd>LiveServerStop<CR>", { desc = "Stop Live-Server " })

-- Terminal mode
keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

vim.keymap.set("n", "c", '"_c', { noremap = true })
vim.keymap.set("v", "c", '"_c', { noremap = true })
