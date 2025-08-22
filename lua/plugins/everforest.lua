-- Everforest colorscheme

return {
	-- Plugin installation
	"neanias/everforest-nvim",

	-- Plugin configuration
	config = function()
		local everforest = require("everforest")

		everforest.setup({
			background = "hard",
		})

		vim.cmd.colorscheme("everforest")
	end,
}
