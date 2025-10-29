return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local colors = {
				bg = "#0d1f2d",
				bg_dark = "#0a1620",
				bg_highlight = "#1a3a52",
				bg_visual = "#2a4a5e",
				fg = "#fef5e7",
				fg_dark = "#f4e8d0",
				fg_gutter = "#3d5f72",

				orange = "#ff8c5d",
				bright_orange = "#ffa35d",
				red = "#ff4444",
				coral = "#ff7b4a",
				green = "#6fbc8d",
				cyan = "#4d9dbf",
				blue = "#6fb5d4",
				teal = "#6fa8bf",

				border = "#2a4a5e",
				comment = "#3d5f72",
			}

			vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
			vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_dark })
			vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.border, bg = colors.bg_dark })

			vim.api.nvim_set_hl(0, "Cursor", { fg = colors.bg, bg = colors.orange })
			vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_highlight })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.orange, bold = true })
			vim.api.nvim_set_hl(0, "LineNr", { fg = colors.fg_gutter })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.bg })
			vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.bg_highlight })
			vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.comment, bg = colors.bg_highlight })
			vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.border })
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.border })

			vim.api.nvim_set_hl(0, "Visual", { bg = colors.bg_visual })
			vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.bg_visual })

			vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.orange })

			vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.bg_dark })
			vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.orange })
			vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_highlight })
			vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.orange })

			vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
			vim.api.nvim_set_hl(0, "Constant", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "String", { fg = colors.green })
			vim.api.nvim_set_hl(0, "Character", { fg = colors.green })
			vim.api.nvim_set_hl(0, "Number", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "Boolean", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "Float", { fg = colors.bright_orange })

			vim.api.nvim_set_hl(0, "Identifier", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "Function", { fg = colors.cyan })

			vim.api.nvim_set_hl(0, "Statement", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "Conditional", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "Repeat", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "Label", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "Operator", { fg = colors.coral })
			vim.api.nvim_set_hl(0, "Keyword", { fg = colors.orange, bold = true })
			vim.api.nvim_set_hl(0, "Exception", { fg = colors.red })

			vim.api.nvim_set_hl(0, "PreProc", { fg = colors.teal })
			vim.api.nvim_set_hl(0, "Include", { fg = colors.teal })
			vim.api.nvim_set_hl(0, "Define", { fg = colors.teal })
			vim.api.nvim_set_hl(0, "Macro", { fg = colors.teal })
			vim.api.nvim_set_hl(0, "PreCondit", { fg = colors.teal })

			vim.api.nvim_set_hl(0, "Type", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "Structure", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "Typedef", { fg = colors.cyan })

			vim.api.nvim_set_hl(0, "Special", { fg = colors.coral })
			vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.coral })
			vim.api.nvim_set_hl(0, "Tag", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.teal })
			vim.api.nvim_set_hl(0, "Debug", { fg = colors.red })

			vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.coral })
			vim.api.nvim_set_hl(0, "@function", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "@keyword", { fg = colors.orange, bold = true })
			vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "@string", { fg = colors.green })
			vim.api.nvim_set_hl(0, "@number", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "@boolean", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "@type", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "@property", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "@parameter", { fg = colors.coral })
			vim.api.nvim_set_hl(0, "@operator", { fg = colors.coral })
			vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "@constructor", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "@tag", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "@tag.attribute", { fg = colors.teal })
			vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.fg })

			vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
			vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.teal })

			vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
			vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })

			vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.border, bg = colors.bg_dark })
			vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.orange, bg = colors.bg_dark })
			vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = colors.fg, bg = colors.bg_highlight })
			vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.orange, bold = true })

			vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
			vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg })
			vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = colors.orange })
			vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.green })
			vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.bright_orange })
			vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.red })

			vim.api.nvim_set_hl(0, "WhichKey", { fg = colors.orange, bold = true })
			vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = colors.cyan })
			vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = colors.fg })
			vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = colors.comment })
			vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = colors.bg })
			vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = colors.border, bg = colors.bg })
			vim.api.nvim_set_hl(0, "WhichKeyValue", { fg = colors.teal })
			vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = colors.bg, fg = colors.fg })
			vim.api.nvim_set_hl(0, "WhichKeySeperator", { fg = colors.comment })
		end,
	},
}
