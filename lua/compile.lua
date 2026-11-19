vim.pack.add({
	"https://github.com/babochyk/compile-mode.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
})

vim.g.compile_mode = {
	default_command = "",
	focus_compilation_buffer = true,
	use_circular_error_navigation = true,
	ask_to_interrupt = false,
	auto_scroll = true
}

require("compile-mode");
