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

   use({
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
          terminal_colors = true,
          dim_inactive = false,
          styles = {
            comments = "NONE",
            keywords = "bold",
            types = "bold",
          },
        },
      })
      vim.cmd("colorscheme nightfox")
    end
  }) 

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


