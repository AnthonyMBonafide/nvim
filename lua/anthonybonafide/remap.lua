vim.g.mapleader = " "
vim.keymap.set("n", "<leader>dl", vim.cmd.Ex)

-- Move higlighted text up and down and also formatting as text is moved, like
-- in an if statement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Enhances regular NVIM J which appends the line after the current one to the
-- current line. However, this keeps the cursor at the front of the line rather
-- continously moving to the end of the line during sucessive uses.
vim.keymap.set("n", "J", "mzJ`z")
-- Half page jumping like usual but keep cursor in middle of screen for less
-- disorientation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep search target in the middle of the screen, less disorienting when doing
-- this a lot quickly
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Update to P but this keeps the original text that was pasted in the register
-- rather than the text that was removed being put into the register.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank text into OS clipboard which can be used outside of NVIM
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without adding to paste register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- Switch between projects
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format code
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fixes for errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word that is under your cursor, start typing right away
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Quickly make files executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
