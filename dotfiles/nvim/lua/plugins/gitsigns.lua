return {
	"lewis6991/gitsigns.nvim",
	event = "BufReadPre",

	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text_pos = "right_align",
			delay = 0,
		},
	},

	keys = {
		{ "<leader>gb", "<cmd>Gitsigns blame<cr>", desc = "Git Blame" },
	},
}
