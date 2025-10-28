return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		preset = "helix",
		icons = {
			separator = "→ ",
		},
		win = {
			border = "single",
			wo = {
				winblend = 0,
			},
		},
	},
}
