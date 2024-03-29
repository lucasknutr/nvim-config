return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree toggle <CR>")
		vim.keymap.set("n", "<C-h>", ":Neotree focus <CR>")
		vim.keymap.set("n", "<S-j>", ':execute "normal! Vj"<CR>')
		vim.keymap.set("n", "<S-k>", ':execute "normal! Vk"<CR>')
    -- custom configs --
    vim.keymap.set("n", "<C-x>", ":Neotree dir=~/.config/nvim <CR>")
	end,
}
