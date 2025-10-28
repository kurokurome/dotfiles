return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "╎",
		},
		scope = {
			enabled = true,
			show_start = true,
			show_end = false,
		},
		exclude = {
			filetypes = {
				"help",
				"dashboard",
				"neo-tree",
				"Trouble",
				"lazy",
				"mason",
				"notify",
				"toggleterm",
				"lazyterm",
			},
			buftypes = {
				"terminal",
				"nofile",
			},
		},
	},
	config = function(_, opts)
		vim.api.nvim_set_hl(0, "IblIndent", { fg = "#1a3a52" })
		vim.api.nvim_set_hl(0, "IblScope", { fg = "#ff8c5d" })

		require("ibl").setup(opts)
	end,
}
