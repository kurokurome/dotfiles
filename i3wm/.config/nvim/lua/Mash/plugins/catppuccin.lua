return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",
		styles = {
			comments = { "italic" },
		},
		term_colors = false,
		auto_integrations = true,
	},
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
