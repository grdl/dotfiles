return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },

	keys = {
		{ "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Files" },
		{ "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Files" },
		{ "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>b", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
	},

	opts = {
		defaults = {
			mappings = {
				i = {
					-- Cycle through prompt history
					["<S-Down>"] = require("telescope.actions").cycle_history_next,
					["<S-Up>"] = require("telescope.actions").cycle_history_prev,
				},
			},
		},
	},
}
