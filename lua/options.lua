local o = {
	number = true,
	relativenumber = true,
	timeout = false,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	signcolumn = "yes:1",
	cmdheight = 1,
	laststatus = 3,
	autoread = true,
	termguicolors = true,
	swapfile = false,
	undofile = false,
	list = true,
	inccommand = "split",
	smartindent = true,
	splitbelow = true,
	splitright = true,
	ignorecase = true,
	smartcase = true,
	scrolloff = 8,
	guicursor = "",
	-- shell = "powershell -NoLogo -NoProfile",
}

for k, v in pairs(o) do
	vim.o[k] = v
end

local g = {
	mapleader = " ",
	maplocalleader = "\\",
	netrw_banner = 0,
	netrw_keepdir = 0,
	neovide_position_animation_length = 0,
	neovide_cursor_animation_length = 0.00,
	neovide_cursor_trail_size = 0,
	neovide_cursor_animate_in_insert_mode = false,
	neovide_cursor_animate_command_line = false,
	neovide_scroll_animation_far_lines = 0,
	neovide_scroll_animation_length = 0.00,
	neovide_hide_mouse_when_typing = true,
}

for k, v in pairs(g) do
	vim.g[k] = v
end

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank()
	end, }
)
