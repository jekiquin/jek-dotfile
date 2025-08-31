vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc><cmd>update<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "[j", "5j")
vim.keymap.set({ "n", "v" }, "[k", "5k")
vim.keymap.set({ "n", "v" }, "[[j", "10j")
vim.keymap.set({ "n", "v" }, "[[k", "10k")
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system cliboard" })

vim.keymap.set("n", "dm", function()
  local char = vim.fn.getchar()
  vim.cmd("delmarks " .. vim.fn.nr2char(char))
end, { desc = "Delete mark" })

vim.keymap.set("n", "<leader>dm", "<cmd>delmarks!<CR>", { desc = "Delete all marks in current buffer" })
