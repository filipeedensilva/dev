
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "mzA;<ESC>`z")
vim.keymap.set("n", "<C-s>", ":w<CR>:Ex<CR>", { silent = true })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<a-h>", "^[^h")
vim.keymap.set("n", "<a-t>", "^[^t")
vim.keymap.set("n", "<a-n>", "^[^n")
vim.keymap.set("n", "<a-s>", "^[^s")

vim.keymap.set("n", "<Left>", "<Nop>", { silent = true })
vim.keymap.set("n", "<Right>", "<Nop>", { silent = true })
vim.keymap.set("n", "<Down>", "<Nop>", { silent = true })
vim.keymap.set("n", "<Up>", "<Nop>", { silent = true })

vim.keymap.set("i", "<Left>", "<Nop>", { silent = true })
vim.keymap.set("i", "<Right>", "<Nop>", { silent = true })
vim.keymap.set("i", "<Down>", "<Nop>", { silent = true })
vim.keymap.set("i", "<Up>", "<Nop>", { silent = true })

vim.keymap.set("v", "<Left>", "<Nop>", { silent = true })
vim.keymap.set("v", "<Right>", "<Nop>", { silent = true })
vim.keymap.set("v", "<Down>", "<Nop>", { silent = true })
vim.keymap.set("v", "<Up>", "<Nop>", { silent = true })
