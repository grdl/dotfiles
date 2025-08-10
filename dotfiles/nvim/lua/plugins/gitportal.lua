return {
	"trevorhauter/gitportal.nvim",
	lazy = false,
	opts = {
		always_include_current_line = true,
	},
	keys = {
		{ "<leader>go", "<cmd>GitPortal<cr>", desc = "Open on remote" },
	},
}
