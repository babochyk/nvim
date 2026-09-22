local map = vim.keymap.set

map("n", ",", "<cmd>noh<CR>")

map("t", "<Esc>", "<C-\\><C-n>")

map("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

map("v", ">", ">gv")
map("v", "<", "<gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>u", function()
	vim.cmd.packadd("nvim.undotree")
	require("undotree").open()
end)


map("n", "<leader>e", function()
	vim.cmd.e(".")
end)

map("n", "<C-w>>", "<C-w>2><C-w>", { remap = true } )
map("n", "<C-w><", "<C-w>2<<C-w>", { remap = true } )
map("n", "<C-w>+", "<C-w>2+<C-w>", { remap = true } )
map("n", "<C-w>-", "<C-w>2-<C-w>", { remap = true } )
