local opt = vim.opt

opt.relativenumber = false
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "no"

opt.backspace = { "indent", "eol", "start" }

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 5

opt.showmode = false

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" })
	end,
})

opt.shell = "/bin/zsh"
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	callback = function()
		local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
		local file = vim.fn.expand("%:t")
		local title = file ~= "" and file or "[No Name]"
		vim.api.nvim_chan_send(vim.v.stderr, "\27]2;" .. title .. "\7")
	end,
})
