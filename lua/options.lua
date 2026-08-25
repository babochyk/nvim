local o = {
	number = true,
	relativenumber = true,
	timeout = false,
	tabstop = 2,
	shiftwidth = 2,
	signcolumn = "auto",
	cmdheight = 0,
	laststatus = 3,
	autoread = true,
	termguicolors = true,
	swapfile = false,
	undofile = false,
	list = true,
	shell = "powershell -NoLogo -NoProfile",
}

for k, v in pairs(o) do
	vim.o[k] = v
end

local g = {
	mapleader = " ",
	maplocalleader = "\\",
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
