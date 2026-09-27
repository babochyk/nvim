vim.pack.add({
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
})

local servers = {
  ["jdtls"] = {
		root_dir = vim.fs.root(0, {'gradlew', '.git', 'mvnw', 'r.sh'}),
	},
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

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = vim.tbl_keys(servers),
	automatic_installation = true,
	automatic_enable = false
})

for server, config in pairs(servers) do
	config.capabilities = vim.lsp.protocol.make_client_capabilities()
	vim.lsp.config(server, config)
	vim.lsp.enable(server);
end
