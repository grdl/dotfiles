-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Reduce latency for which_key pop up
vim.opt.timeoutlen = 50

-- Don't use fish shell in vim as it causes slowness and other issues
-- https://github.com/fish-shell/fish-shell/issues/7004#issuecomment-628530961
vim.opt.shell = "/bin/sh"

-- Don't show warning about swapfiles
vim.opt.shortmess:append({ A = true })
