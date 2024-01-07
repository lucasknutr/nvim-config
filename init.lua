vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- local mocha = require("catppuccin.palettes").get_palette "mocha"
-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha "

require("lazy").setup("plugins")


-- custom shortcuts
-- copy to clipboard using ctrl+shift+c
vim.keymap.set("v", "<C-c>", '"+y', {})
vim.keymap.set("n", "<C-c>", '"+y', {})
-- paste from clipboard using ctrl+shift+v
vim.keymap.set("i", "<C-v>", '<ESC>"+pa', {})
vim.keymap.set("n", "<C-v>", '"+p', {})

-- Move line/selection up
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
-- Move line/selection down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('n', '<C-e>', ':E <CR>', { noremap = true, silent = true })




