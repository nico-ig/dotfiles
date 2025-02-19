-----------------------
-- LOCAL ALIAS
-----------------------
local opt = vim.opt
local cmd = vim.cmd
local global = vim.g

-----------------------
-- LINE NUMBERS
-----------------------
vim.wo.number = true
opt.nu = true
opt.relativenumber = true

-----------------------
-- INDENT
-----------------------
opt.smartindent = true
vim.o.breakindent = true

-----------------------
-- TABSTOP
-----------------------
opt.expandtab = true

-----------------------
-- COLUMN BORDER
-----------------------
opt.wrap = true
opt.textwidth = 80
cmd [[autocmd WinLeave * set colorcolumn=0]]
cmd [[autocmd WinEnter * set colorcolumn=+0]]
cmd [[autocmd BufEnter * set colorcolumn=+0]]

-----------------------
-- CURSORLINE
-----------------------
vim.o.cursorline = true
cmd [[autocmd WinLeave * set nocursorline]]
cmd [[autocmd WinEnter * set cursorline]]
cmd [[autocmd BufEnter * set cursorline]]

-----------------------
-- SEARCH
-----------------------
opt.hlsearch = false
opt.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-----------------------
-- SCROLL
-----------------------
opt.scrolloff = 999
vim.o.ttyfast = true

-----------------------
-- CURSOR
-----------------------
cmd[[
augroup RestoreCursor
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
augroup END
]]
