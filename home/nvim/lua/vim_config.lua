
-- Leader key: Space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Search behavior
opt.ignorecase = true
opt.smartcase = true

-- Scrolling
opt.scrolloff = 8

-- Appearance
opt.termguicolors = true
opt.signcolumn = 'yes'

-- Persistent undo
opt.undofile = true
vim.fn.mkdir(vim.fn.stdpath('state') .. '/undo', 'p')

-- Code editing
opt.wrap = false

