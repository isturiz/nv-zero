vim.g.mapleader = " "

local opt = vim.opt
local indent = 2

-- tab
opt.tabstop = indent -- display width of tab
opt.softtabstop = indent -- width of tab in insert mode
opt.shiftwidth = indent -- width of tab in normal mode
opt.expandtab = true -- replace tabs for spaces
opt.smartindent = true -- autoindent new lines

-- mouse
opt.mouse = "" -- "" -> disable mouse support / "a" -> enable mouse support in normal and visual mode

-- aside 
opt.number = true -- show line number aside
opt.relativenumber = true -- show relative line number aside

-- lines
opt.wrap = false -- display lines as long line

-- scroll
opt.scrolloff = 8 -- row lines of context
opt.sidescrolloff = 8 -- column lines of context

-- clipboard
opt.clipboard = "unnamedplus" -- copy/paste to system clipboard

-- split
opt.splitbelow = true -- horizontal split to the bottom (false to top)
opt.splitright = true -- vertical split to the right (false to left)

-- performance
opt.synmaxcol = 1000 -- limit the max column for syntax highlight
opt.undofile = true -- enable and save undo history
opt.undodir = os.getenv "HOME" .. "/.cache/nvim/undodir" -- path to save undo files

-- find
opt.smartcase = true -- ignore lower and upper case

-- save
opt.confirm = true -- confirm before exiting

-- unclassified
opt.termguicolors = true