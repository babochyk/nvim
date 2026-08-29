local servers = {
	["clangd"] = {},
	["lua_ls"] = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	},
}

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, {})
end

return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", config = true },
		"neovim/nvim-lspconfig"
	},
	config = function()
		local opts = {
			ensure_installed = vim.tbl_keys(servers),
			automatic_installation = true,
		}
		require("mason-lspconfig").setup(opts)

		for server, config in pairs(servers) do
			config.on_attach = function()
				local buf = vim.lsp.buf
				map("n", "gD", buf.declaration)
				map("n", "K", buf.hover)
				map("n", "<leader>r", buf.rename)
				map("n", "<leader>a", buf.code_action)
				vim.api.nvim_create_user_command("Format", function() buf.format() end, {})
			end
			vim.lsp.config(server, config)
		end
	end
}
