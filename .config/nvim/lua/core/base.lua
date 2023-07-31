vim.bo.tabstop = 2
vim.bo.shiftwidth = 2 
vim.bo.expandtab = true
vim.bo.softtabstop = 2

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.scrolloff = 10

vim.opt.relativenumber = true

vim.cmd([[:Neotree float reveal]])
vim.cmd [[cabbrev wq execute "Format sync" <bar> wq]]
