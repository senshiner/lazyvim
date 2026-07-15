-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

-- 1. Essential VS Code-like Keybindings (Mapped)

-- Copy/Paste in Insert Mode
vim.keymap.set("i", "<C-c>", "<Esc>yi", { desc = "Copy to clipboard" })
vim.keymap.set("i", "<C-v>", "<Esc>pi", { desc = "Paste from clipboard" })

-- Duplicate Line (Normal mode)
vim.keymap.set("n", "<S-A-Up>", "yyP", { desc = "Duplicate line up" })
vim.keymap.set("n", "<S-A-Down>", "yyp", { desc = "Duplicate line down" })

-- Move Line (Normal mode)
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move line down" })

-- Select All (Normal mode)
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Delete Line (Normal mode)
vim.keymap.set("n", "<C-S-k>", "dd", { desc = "Delete line" })

-- Toggle Terminal (Normal mode)
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })

-- File Tree Explorer (Default LazyVim)
-- SPC e is default, keeping it for clarity in shortcuts
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle File Tree" })
