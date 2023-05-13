-----------------------
-- LOCAL ALIAS
-----------------------
local map = vim.keymap.set

-----------------------
-- FUNCTIONS
-----------------------
-- Move to function begin and end
map({"n", "v"}, "<A-k>", "?^[^ \\t#/-]<CR>")
map({"n", "v"}, "<A-j>", "/^[^ \\t#/-]<CR>")
-- Add/remove space between function definition and condition.
map("n", "<leader>a", [[:%s/\(\a\)(/\1 (/gc<CR>]])
map("n", "<leader>b", [[:%s/\(\a\) (/\1(/gc<CR>]])

-----------------------
-- MOVE LINES VISUAL
-----------------------
-- Move lines up and down when in visual mode (needs better shortcut)
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-----------------------
-- REPLACE
-----------------------
-- Replace all occurrences of a word in the file
map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>//gc<Left><Left><Left>]])
---- Replace all occurrences of a word in the line
map({"n", "v"}, "<leader>sl", [[:s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-----------------------
-- EXPLORER
-----------------------
map("n", "<leader>ex", vim.cmd.Vex)

-----------------------
-- YANK
-----------------------
-- Yank to normal register
map({"n", "v"}, "<C-S-y>", [["+y]])

-----------------------
-- DISABLE DEFAULT
-----------------------
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-----------------------
-- WORD WRAP
-----------------------
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
