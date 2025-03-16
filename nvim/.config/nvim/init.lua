vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("plugins")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.harpoon")
require("plugins.telescope")
require("plugins.cmp")
require("plugins.autopairs")
require("remap")
require("set")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.opt.colorcolumn = ""
vim.cmd [[highlight WinSeparator guibg=None guifg=None]]
