return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      html = { "prettierd" },
      css = { "prettierd" },
			json = { "prettierd" },
			markdown = { "prettierd" },
			javascript = { "prettierd" },
			lua = { "stylua" },
			python = { "isort" },
			c = { "clang-format " },
			cpp = { "clang-format " },
		},
    format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		},
	},
}
