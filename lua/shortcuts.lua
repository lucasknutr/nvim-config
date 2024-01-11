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

-- Move to explore mode
vim.keymap.set('n', '<C-e>', ':E <CR>', { noremap = true, silent = true })

-- Move to terminal mode
vim.keymap.set('n', '<C-t>', ':term <CR>', { noremap = true, silent = true })

-- Exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

