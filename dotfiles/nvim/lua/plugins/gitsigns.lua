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
		{ "<leader>gb", "<cmd>Gitsigns blame<cr>", desc = "Blame" },
		{ "<leader>g.", "<cmd>Gitsigns next_hunk<cr>", desc = "Next Hunk" },
		{ "gh", "<cmd>Gitsigns next_hunk<cr>", desc = "Next Hunk" },
		{ "<leader>g,", "<cmd>Gitsigns prev_hunk<cr>", desc = "Previous Hunk" },
		{ "gH", "<cmd>Gitsigns prev_hunk<cr>", desc = "Previous Hunk" },
		{ "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview Hunk" },
		{ "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset Hunk" },
		{ "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage Hunk" },
		{ "<leader>gS", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Undo Stage Hunk" },
	},
}
