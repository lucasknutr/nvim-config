return {
	"EvgeniGenchev/comment-nvim",
	config = function()
		local comment = require("comment")
		comment.setup({
      languages = {
        sh = "#",
        php = "//",
        java = "//",
        javascript = "//",
        typescript = "//",
        rust = "//",
        typescriptreact = "//",
        arduino = "//",
        css = "//",
      },
    })
	end,
}
