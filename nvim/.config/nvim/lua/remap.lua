-- Set the leader key to space
vim.g.mapleader = " "

-- Open netrw (file explorer) with <leader>pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Scroll down/up half a page and center the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")  -- <C-d>: half-page down
vim.keymap.set("n", "<C-u>", "<C-u>zz")  -- <C-u>: half-page up

-- Go to next/previous search result and center the cursor
vim.keymap.set("n", "n", "nzzzv")        -- "n": next search match
vim.keymap.set("n", "N", "Nzzzv")        -- "N": previous search match

-- Format current buffer using LSP with <leader>f
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Go to next/previous item in the location list and center the cursor
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")  -- Next location list item
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")  -- Previous location list item

-- Go to next/previous item in the quickfix list and center the cursor
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")      -- Next quickfix item
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")      -- Previous quickfix item

-- Search and replace the word under the cursor globally, case-insensitive
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Yank (copy) to system clipboard in normal and visual modes
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])  -- Copy selected/yanked text
vim.keymap.set("n", "<leader>Y", [["+Y]])         -- Copy entire line to clipboard

-- Populates and opens the location list with LSP diagnostics
vim.keymap.set("n", "<leader>e", function()
  -- Garantir que a location list seja preenchida
  vim.diagnostic.setloclist({ open = true })
end)
