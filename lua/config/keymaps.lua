-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

-- 1. Copy/Paste (Insert/Normal)
vim.keymap.set({ "n", "i", "v" }, "<C-c>", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set({ "n", "i", "v" }, "<C-v>", '"+p', { desc = "Paste from clipboard" })

-- 2. Duplicate Line (Insert/Normal)
vim.keymap.set("n", "<S-A-Up>", "yyP", { desc = "Duplicate line up" })
vim.keymap.set("n", "<S-A-Down>", "yyp", { desc = "Duplicate line down" })
vim.keymap.set("i", "<S-A-Up>", "<Esc>yyPi", { desc = "Duplicate line up" })
vim.keymap.set("i", "<S-A-Down>", "<Esc>yypi", { desc = "Duplicate line down" })

-- 3. Move Line (Normal/Insert/Visual)
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("i", "<A-Up>", "<Esc><cmd>m .-2<cr>==gi", { desc = "Move line up" })
vim.keymap.set("i", "<A-Down>", "<Esc><cmd>m .+1<cr>==gi", { desc = "Move line down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move line up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move line down" })

-- 4. Delete Line
vim.keymap.set({ "n", "i" }, "<C-S-k>", "<cmd>normal! dd<cr>", { desc = "Delete line" })

-- 5. Toggle Terminal
vim.keymap.set({ "n", "t" }, "<C-t>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })

-- Extras: Save/Close/Comment/Pane Nav
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set("n", "<C-w>", "<cmd>bd<cr>", { desc = "Close buffer" })
vim.keymap.set({ "n", "v" }, "<C-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("i", "<C-/>", "<Esc>gccgi", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Go to Left Pane" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Go to Down Pane" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Go to Up Pane" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Go to Right Pane" })
