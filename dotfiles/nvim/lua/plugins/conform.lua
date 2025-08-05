return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			go = { "goimports", "gofmt" },
			terraform = { "terraform_fmt" },
			yaml = { "yamlfmt" },
		},
		format_on_save = {
			timeout_ms = 5000,
			lsp_format = "fallback",
		},
	},
}
