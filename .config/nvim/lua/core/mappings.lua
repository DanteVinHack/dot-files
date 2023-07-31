local setKey = vim.keymap.set

vim.g.mapleader = " "

-- Window navigation
setKey("n", "<c-h>", "<C-W>h")
setKey("n", "<c-j>", "<C-W>j")
setKey("n", "<c-k>", "<C-W>k")
setKey("n", "<c-l>", "<C-W>l")

-- Neotree
setKey("n", "<leader>e", ":Neotree float reveal<cr>")

-- Base
setKey("n", "<leader>aq", ":q<cr>", {})
setKey("n", "<leader>q", ":bdelete<cr>", {})
setKey("n", "<leader>w", ":w<cr>", {})
setKey("n", "<leader>h", ":noh<cr>", {})

setKey({ "i", "s" }, "jk", "<esc>", {})
setKey({ "i", "s" }, "Jk", "<esc>", {})
setKey({ "i", "s" }, "jK", "<esc>", {})
setKey({ "i", "s" }, "JK", "<esc>", {})

-- Tab
setKey("n", "<S-h>", ":bp<enter>", {})
setKey("n", "<S-l>", ":bn<enter>", {})

-- Terminal
setKey("n", "<leader>tt", ":ToggleTerm direction=horizontal<cr>")

-- Formatter
setKey("n", "<C-f>", ":Neoformat<cr>")
