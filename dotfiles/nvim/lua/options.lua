-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.markdown_recommended_style = 0 -- Fix markdown indentation settings


-- Lots of those based on the LazyVim options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.ignorecase = true -- Ignore case when autocompleting commands
vim.opt.number = true -- Print line number
vim.opt.relativenumber = true -- Print relative line numbers
vim.opt.shell = "/bin/sh" -- Don't set shell to Fish
vim.opt.shiftwidth = 2 -- Size of an indent
vim.opt.smoothscroll = true
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.termguicolors = true -- True color support
vim.opt.undofile = true
vim.opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
vim.opt.wrap = false -- Disable line wrap
vim.opt.timeoutlen = 100 -- Lower than default (1000) to quickly trigger which-key
