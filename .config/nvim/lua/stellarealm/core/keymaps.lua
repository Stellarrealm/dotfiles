require("stellarealm.core.terminal")

local map = vim.keymap.set

-- Define a leader key
vim.g.mapleader = " "

-- Autopair
map("i", "(", "()<left>")
map("i", "{", "{}<left>")
map("i", "[", "[]<left>")
map("i", "'", "''<left>")
map("i", "`", "``<left>")
map("i", '"', '""<left>')

-- Better Indenting

-- stay in visual mode when indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Better Cursor Positioning

-- seamlessly treat visual lines as actual lines when moving around.
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true})
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true})

-- keeps the cursor in the center when doing C-d/C-u or n/N
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- keeps the cursor in position when doing J
map("n", "J", "mzJ`z")

-- Move lines or blocks of code

-- move lines of code in insert/normal mode using ALT-j/ALT-k
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi")
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi")
map("n", "<A-j>", "<cmd>m .+1<cr>==")
map("n", "<A-k>", "<cmd>m .-2<cr>==")

-- move block of codes in visual mode using ALT-j/ALT-k
map("v", "<A-j>", ":m '>+1<cr>gv=gv")
map("v", "<A-k>", ":m '<-2<cr>gv=gv")

-- Nice to Have

-- clear highlight search using esc
map("n", "<esc>", "<cmd>nohl<cr>")

-- exit insert mode using qq
map("i", "qq", "<Esc>")

-- no yank when doing x
map("n", "x", '"_x')

-- Buffer Mapping

-- list all active buffer
-- map("n", "<leader><leader>", "<cmd>ls<cr>")

-- go to previous buffer / next buffer using [b/]b
map("n", "[b", "<cmd>bp<cr>")
map("n", "]b", "<cmd>bn<cr>")

-- NetRW Mapping

-- toggle NetRW in the current working directory
map("n", "<leader>e", "<cmd>Lexplore<cr>")

-- open NetRW in the current buffer directory
-- map("n", "<leader>f", "<cmd>Le %:p:h<cr>")

-- Terminal Mapping

-- toggle terminal using C-/
map({ "n", "t" }, "<C-/>", ToggleTerminal)

-- use esc to return to normal mode from terminal mode
map("t", "<Esc>", "<C-\\><C-N>")

-- Window Resizing

-- decrease/increase window width using C-h/C-l
-- map("n", "<C-h>", "5<C-w><")
-- map("n", "<C-l>", "5<C-w>>")

-- decrease/increase window height using C-k/C-j
-- map("n", "<C-k>", "5<C-w>-")
-- map("n", "<C-j>", "5<C-w>+")
