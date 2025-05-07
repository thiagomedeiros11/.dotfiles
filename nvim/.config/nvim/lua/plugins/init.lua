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
      "rose-pine/neovim",
      as = "rose-pine",
      config = function()
        require("rose-pine").setup({
          variant = "auto",         -- auto | main | moon | dawn
          dark_variant = "main",    -- main | moon | dawn
          dim_inactive_windows = false,
          extend_background_behind_borders = true,

          enable = {
            terminal = true,
            legacy_highlights = true,
            migrations = true,
          },

          styles = {
            bold = true,
            italic = false,
            transparency = false,
          },
        })

        vim.cmd("colorscheme rose-pine")
      end
    })

  
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


