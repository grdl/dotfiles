return {
	"folke/which-key.nvim",
	event = "VeryLazy",

	dependencies = { "nvim-tree/nvim-web-devicons" },

	opts = {
		preset = "helix",
		delay = 0,

		spec = {
			{ "<leader>g", group = "Git", desc = "Git" },
			{ "<leader>s", group = "Search", desc = "Search" },
		},
	},
}
