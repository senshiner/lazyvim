-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

-- Save with Ctrl + s
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Close buffer with Ctrl + w
vim.keymap.set("n", "<C-w>", "<cmd>bd<cr>", { desc = "Close buffer" })

-- Toggle Terminal with Ctrl + `
vim.keymap.set({ "n", "t" }, "<C-`>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })

-- Commenting with Ctrl + /
vim.keymap.set({ "n", "v" }, "<C-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("i", "<C-/>", "<Esc>gccgi", { remap = true, desc = "Toggle Comment" })

-- Pane Navigation
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Go to Left Pane" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Go to Down Pane" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Go to Up Pane" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Go to Right Pane" })

-- Move line up/down with Alt + Up/Down
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("i", "<A-Up>", "<Esc><cmd>m .-2<cr>==gi", { desc = "Move line up" })
vim.keymap.set("i", "<A-Down>", "<Esc><cmd>m .+1<cr>==gi", { desc = "Move line down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move line up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move line down" })

-- Undo dengan Ctrl+Z di mode Insert
vim.keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true, silent = true })
-- Redo dengan Ctrl+Y di mode Insert
vim.keymap.set("i", "<C-y>", "<Esc><C-r>i", { noremap = true, silent = true })
-- Hapus seluruh baris saat ini di mode Insert (Ctrl+Backspace)
vim.keymap.set("i", "<C-Backspace>", "<Esc>ddi", { noremap = true, silent = true })
-- Select All di mode Insert (Ctrl+A)
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { noremap = true, silent = true })
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })
-- Duplicate line di mode Insert Shift + Alt + Up/Down
vim.keymap.set("i", "<S-A-Up>", "<Esc>yyPi", { noremap = true, silent = true })
vim.keymap.set("i", "<S-A-Down>", "<Esc>yypi", { noremap = true, silent = true })
-- Copy (Ctrl + C) dan Paste (Ctrl + V) di mode Insert
vim.keymap.set("i", "<C-c>", "<Esc>yyi", { noremap = true, silent = true })
vim.keymap.set("i", "<C-v>", "<Esc>pgi", { noremap = true, silent = true })
