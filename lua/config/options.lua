 vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local options = {
	wrap = false,
	swapfile = false,
	timeout = false,
	number = true,
	hlsearch = true,
	relativenumber = true,
	cursorline = true,
	termguicolors = true,
	signcolumn = "yes",
	pumheight = 16,
	tabstop = 4,
	shiftwidth = 4,
	cmdheight = 2,
}

local neovide_options = {
	neovide_floating_blur_amount_x = 2.0,
	neovide_floating_blur_amount_y = 2.0,
	neovide_hide_mouse_when_typing = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

if vim.g.neovide then
	print("NEOVIDE!!")
	for k, v in pairs(neovide_options) do
		vim.g[k] = v
	end
end
