return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = function()
		-- Custom theme based on anime artwork palette
		local colors = {
			bg = "#0d1f2d",
			fg = "#fef5e7",
			orange = "#ff8c5d",
			bright_orange = "#ffa35d",
			cyan = "#4d9dbf",
			green = "#6fbc8d",
			teal = "#6fa8bf",
			red = "#ff4444",
			coral = "#ff7b4a",
			blue = "#2a4a5e",
			dark_blue = "#1a3a52",
		}

		local custom_theme = {
			normal = {
				a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
				b = { bg = colors.blue, fg = colors.fg },
				c = { bg = colors.dark_blue, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = colors.blue, fg = colors.fg },
				c = { bg = colors.dark_blue, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.cyan, fg = colors.bg, gui = "bold" },
				b = { bg = colors.blue, fg = colors.fg },
				c = { bg = colors.dark_blue, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.coral, fg = colors.bg, gui = "bold" },
				b = { bg = colors.blue, fg = colors.fg },
				c = { bg = colors.dark_blue, fg = colors.fg },
			},
			command = {
				a = { bg = colors.bright_orange, fg = colors.bg, gui = "bold" },
				b = { bg = colors.blue, fg = colors.fg },
				c = { bg = colors.dark_blue, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.dark_blue, fg = colors.blue },
				b = { bg = colors.dark_blue, fg = colors.blue },
				c = { bg = colors.dark_blue, fg = colors.blue },
			},
		}

		return {
			options = {
				icons_enabled = true,
				theme = custom_theme,
				component_separators = { left = "│", right = "│" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
					refresh_time = 16,
					events = {
						"WinEnter",
						"BufEnter",
						"BufWritePost",
						"SessionLoadPost",
						"FileChangedShellPost",
						"VimResized",
						"Filetype",
						"CursorMoved",
					},
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "location", "progress" },
				lualine_z = {
					function()
						return os.date("%H:%M:%S")
					end,
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			extensions = {
				{
					sections = {
						lualine_a = {},
						lualine_b = {},
						lualine_c = {},
						lualine_x = {},
						lualine_y = {},
						lualine_z = {
							function()
								return os.date("%A %X")
							end,
						},
					},
					filetypes = { "NvimTree" },
				},
			},
		}
	end,
}
