-- Minimal setup roughly inspired by https://github.com/NvChad/tinyvim

require("options")
require("mappings")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
})

vim.cmd("colorscheme gruvbox")
--
-- vim.lsp.config("terraformls", {
--
-- 	init_options = {
-- 		experimentalFeatures = {
-- 			prefillRequiredFields = true,
-- 		},
-- 	},
-- })
