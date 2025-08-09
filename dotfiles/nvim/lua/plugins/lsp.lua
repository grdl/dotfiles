return {
	{
		"mason-org/mason.nvim", -- installs LSP servers
		opts = {},
		keys = {
			{ "grd", vim.lsp.buf.definition, desc = "Go to definition" },
		},
	},
	{
		"neovim/nvim-lspconfig", -- configures LSPs
		init = function()
			-- additional config for terraform-ls
			vim.lsp.config("terraformls", {
				cmd = { "terraform-ls", "serve", "-log-file", "/dev/null" },
				init_options = {
					experimentalFeatures = {
						prefillRequiredFields = true,
					},
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim", -- links the two above
		opts = {
			ensure_installed = {
				"lua_ls",
				"pyright",
				"gopls",
				"terraform-ls",
			},
		},
	},
}
