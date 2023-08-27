local map = vim.keymap.set



-- fast actions
map("n", "<leader>w", ":w<CR>", { desc = "fast file saving" })
map("n", "<leader>q", ":q<CR>", { desc = "fast quit" })
map("i", "jk", "<Esc>", { desc = "fast escape in insert mode" })

-- Move Lines
map("n", "<A-j>", ":m .+1<CR>==", { desc = "" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "" })

-- indent
map("v", "<Tab>", ">gv", { desc = "indent in visual" })
map("v", "<S-Tab>", "<gv", { desc = "unindent in visual" })

-- don't use arrow keys
map("", "<left>", "<nop>", { noremap = true })
map("", "<down>", "<nop>", { noremap = true })
map("", "<up>", "<nop>", { noremap = true })
map("", "<right>", "<nop>", { noremap = true })

-- move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h", { desc = "move left" })
map("n", "<C-j>", "<C-w>j", { desc = "move down" })
map("n", "<C-k>", "<C-w>k", { desc = "move up" })
map("n", "<C-l>", "<C-w>l", { desc = "move right" })

-- unclassified
map("n", "<leader>/", ":nohl<CR>", { desc = "clear search" })
