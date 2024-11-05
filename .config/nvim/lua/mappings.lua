require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


map("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")
map("n", "<leader>pp", "<cmd>Telescope<cr>")

map("n", "<Leader>ss", require("auto-session.session-lens").search_session, {
  noremap = true,
})



vim.api.nvim_create_autocmd("BufWritePre", {
  buffer = buffer,
  callback = function()
    vim.lsp.buf.format { async = false }
  end
})
