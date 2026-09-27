local map = vim.keymap.set

-- noh
map("n", ",", "<cmd>noh<CR>")

-- terminal qol
map("t", "<Esc>", "<C-\\><C-n>")

-- vertical line movement
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- horizontal line movement qol
map("v", ">", ">gv")
map("v", "<", "<gv")

-- center C-d and C-u
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- center n and N
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- substitute
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>S", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("v", "<leader>s", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- undo tree
map("n", "<leader>u", function()
	vim.cmd.packadd("nvim.undotree")
	require("undotree").open()
end)

-- netrw
map("n", "<leader>e", function()
	vim.cmd.e(".")
end)

-- clone
map("n", "<C-k>", "yyP", { remap = true } )
map("n", "<C-j>", "yyp", { remap = true } )

-- window resizing
map("n", "<C-w>>", "<C-w>2><C-w>", { remap = true } )
map("n", "<C-w><", "<C-w>2<<C-w>", { remap = true } )
map("n", "<C-w>+", "<C-w>2+<C-w>", { remap = true } )
map("n", "<C-w>-", "<C-w>2-<C-w>", { remap = true } )

-- lsp
local buf = vim.lsp.buf

map("n", "gD", buf.declaration)
map("n", "K", buf.hover)
map("n", "<leader>f", buf.format)
map("n", "<leader>a", buf.code_action)
map("n", "<leader>r", buf.rename)
map("n", "<leader>t", buf.type_definition)
