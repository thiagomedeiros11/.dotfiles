require("nvim-treesitter.configs").setup({
  ensure_installed = { "javascript", "typescript", "lua", "json", "rust" },
  highlight = { enable = true },
})
