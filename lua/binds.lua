local map = vim.keymap.set

-- noh
map("n", ",", "<cmd>noh<CR>")

-- yank cursor stays in place
vim.keymap.set("x", "y", "ygv<Esc>")

-- clone
map("n", "<C-k>", function()
	local curpos = vim.api.nvim_win_get_cursor(0)
	vim.cmd("normal! yyP")
	vim.api.nvim_win_set_cursor(0, curpos)
end)
map("n", "<C-j>", function()
	local curpos = vim.api.nvim_win_get_cursor(0)
	curpos[1] = curpos[1] + 1
	vim.cmd("normal! yyp")
	vim.api.nvim_win_set_cursor(0, curpos)
end)

-- terminal qol
map("t", "<Esc>", "<C-\\><C-n>")
map("n", "<leader>t<CR>", ":te<CR>")

-- vertical line movement
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- horizontal line movement qol
map("v", "<", "<gv")
map("v", ">", ">gv")

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

-- tabpages
map("n", "<leader>tn", ":tabnew<CR>")
map("n", "<leader>th", ":tabnext -1<CR>")
map("n", "<leader>tl", ":tabnext<CR>")
map("n", "<leader>tq", ":tabclose<CR>")
map("n", "<leader>tQ", ":tabonly<CR>")

-- windows
map("n", "<leader>w", "<C-w>", { remap = true })
map("n", "<leader>wtv", "<C-w>v:te<CR>")
map("n", "<leader>wts", "<C-w>s:te<CR>")
map("n", "<leader>wev", "<C-w>v:e .<CR>")
map("n", "<leader>wes", "<C-w>s:e .<CR>")

-- window resizing
map("n", "<C-w>>", "<C-w>2><C-w>", { remap = true })
map("n", "<C-w><", "<C-w>2<<C-w>", { remap = true })
map("n", "<C-w>+", "<C-w>2+<C-w>", { remap = true })
map("n", "<C-w>_", "<C-w>2-<C-w>", { remap = true })

-- lsp
local buf = vim.lsp.buf

map("n", "gD", buf.declaration)
map("n", "K", buf.hover)
map("n", "<leader>f", buf.format)
map("v", "<leader>f", buf.format)
map("n", "<leader>a", buf.code_action)
map("n", "<leader>r", buf.rename)

