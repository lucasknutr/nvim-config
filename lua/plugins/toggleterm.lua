return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 35,
			open_mapping = [[<c-t>]],
			shade_filetypes = {},
			direction = "vertical",
		})
	end,
}
