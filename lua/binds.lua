local map = vim.keymap.set

map("n", ",", "<cmd>noh<CR>")

map("t", "<Esc>", "<C-\\><C-n>")

map("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv") -- move line down(v)

map("v", ">", ">gv")
map("v", "<", "<gv")


map("n", "<C-w>>", "<C-w>2><C-w>", { remap = true } )
map("n", "<C-w><", "<C-w>2<<C-w>", { remap = true } )
map("n", "<C-w>+", "<C-w>2+<C-w>", { remap = true } )
map("n", "<C-w>-", "<C-w>2-<C-w>", { remap = true } )
