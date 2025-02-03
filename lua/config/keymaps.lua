-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here
-- Pindah code alt + up/down
-- vim.keymap.set("i", "<A-Up>", "<Esc>yyPgi", { noremap = true, silent = true })
-- vim.keymap.set("i", "<A-Down>", "<Esc>yypgi", { noremap = true, silent = true })

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
