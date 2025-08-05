return {
	{
		"mason-org/mason.nvim", -- installs LSP servers
		opts = {},
	},
	{
		"neovim/nvim-lspconfig", -- configures LSPs
	},
	{
		"mason-org/mason-lspconfig.nvim", -- links the two above
		opts = {
			ensure_installed = {
				"lua_ls",
				"pyright",
				"gopls",
			},
		},
	},
}
