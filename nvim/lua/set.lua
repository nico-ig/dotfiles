-----------------------
-- LOCAL ALIAS
-----------------------
local opt = vim.opt
local cmd = vim.cmd
local global = vim.g

-----------------------
-- LEADER KEY
-----------------------
global.mapleader = ' '
global.maplocalleader = ' '

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
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-----------------------
-- COLUMN BORDER
-----------------------
opt.wrap = false
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
opt.scrolloff = 5
vim.o.ttyfast = true

-----------------------
-- STATUS
-----------------------
opt.statuscolumn = "%=%{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum) : ''}%=%s"
cmd [[set signcolumn=yes:1]]

-----------------------
-- MOUSE
-----------------------
vim.o.mouse = 'a'
vim.o.mouse = 'v'

-----------------------
-- UNDO
-----------------------
-- Undotree responsible for the undo files
opt.swapfile = false
opt.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-----------------------
-- TIME
-----------------------
vim.o.updatetime = 300
vim.o.timeout = true
vim.o.timeoutlen = 500

-----------------------
-- COLORS
-----------------------
vim.o.termguicolors = true

-----------------------
-- YANK
-----------------------
cmd[[
augroup YankHighlight
  autocmd!
  autocmd TextYankPost * lua vim.highlight.on_yank()
augroup END
]]

-----------------------
-- COMPLETITION
-----------------------
cmd [[set wildmode=longest,list]]
vim.o.completeopt = 'menuone,noselect'

-- -----------------------
-- -- CURSOR
-- -----------------------
-- cmd[[
-- augroup RestoreCursor
--   autocmd!
--   autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | normal! g`" | endif
-- augroup END
-- ]]

-----------------------
-- COMMENT
-----------------------
global.comment_empty_lines = 0
