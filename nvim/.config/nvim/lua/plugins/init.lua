vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  use("neovim/nvim-lspconfig")

  use("ThePrimeagen/harpoon")

  use("nvim-lua/plenary.nvim")

  use("nvim-telescope/telescope.nvim")

  use {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = false,
    })
    vim.cmd("colorscheme tokyonight")
  end
}
  
  -- Auto Complete
  use {
  "hrsh7th/nvim-cmp",
  requires = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip"
  }
}

  use 'tpope/vim-commentary'

  use 'windwp/nvim-autopairs'

end)
