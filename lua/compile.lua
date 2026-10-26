vim.pack.add({
	"https://github.com/ej-shafran/compile-mode.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
})

vim.g.compile_mode = {
	default_command = "",
	focus_compilation_buffer = true,
	-- clear_environment = true,
}

require("compile-mode");
