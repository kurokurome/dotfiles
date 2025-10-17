return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		input = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		terminal = { enabled = true },
		health = { enabled = true },
		dashboard = {
			width = 60,
			row = nil,
			col = nil,
			pane_gap = 4,
			autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
			preset = {
				---@type fun(cmd:string, opts:table)|nil
				pick = nil,
				---@type snacks.dashboard.Item[]
				keys = {
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{
						icon = " ",
						key = "SPC ee",
						desc = "Toggle file explorer",
						action = "<cmd>NvimTreeToggle<CR>",
					},
					{
						icon = "󰱼 ",
						key = "SPC ff",
						desc = "Find File",
						action = "<cmd>Telescope find_files<cr>",
					},
					{
						icon = " ",
						key = "SPC fs",
						desc = "Find Text",
						action = "<cmd>Telescope live_grep<cr>",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				header = [[
████████████████████████████████████████████████████████
█▌                                                    ▐█
█▌ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ▐█
█▌ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ▐█
█▌ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ▐█
█▌ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ▐█
█▌ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ▐█
█▌ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ▐█
█▌                                                    ▐█
████████████████████████████████████████████████████████]],
			},
			formats = {
				icon = function(item)
					if item.file and item.icon == "file" or item.icon == "directory" then
						return M.icon(item.file, item.icon)
					end
					return { item.icon, width = 2, hl = "icon" }
				end,
				footer = { "%s", align = "center" },
				header = { "%s", align = "center" },
				file = function(item, ctx)
					local fname = vim.fn.fnamemodify(item.file, ":~")
					fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
					if #fname > ctx.width then
						local dir = vim.fn.fnamemodify(fname, ":h")
						local file = vim.fn.fnamemodify(fname, ":t")
						if dir and file then
							file = file:sub(-(ctx.width - #dir - 2))
							fname = dir .. "/…" .. file
						end
					end
					local dir, file = fname:match("^(.*)/(.+)$")
					return dir and { { dir .. "/", hl = "dir" }, { file, hl = "file" } } or { { fname, hl = "file" } }
				end,
			},
			sections = {
				{ section = "header" },
				{ section = "keys", gap = 1, padding = 1 },
				{ section = "startup" },
			},
		},
	},
	keys = {
		{
			"<leader>g",
			function()
				Snacks.lazygit.open()
			end,
			desc = "Lazygit",
		},
		{
			"<leader>o",
			function()
				Snacks.terminal.open()
			end,
			desc = "Toggle Terminal",
		},
	},
}
