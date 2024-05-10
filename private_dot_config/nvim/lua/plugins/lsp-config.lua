return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = {
					"snyk_ls",
					"typos_lsp",
					"angularls",
					"ansiblels",
					"bashls",
					"clangd",
					"omnisharp_mono",
					"cmake",
					"cssls",
					"dockerls",
					"docker_compose_language_service",
					"dotls",
					"eslint",
					"emmet_ls",
					"golangci_lint_ls",
					"gradle_ls",
					"graphql",
					"groovyls",
					"html",
					"helm_ls",
					"jsonls",
					"java_language_server",
					"jqls",
					"kotlin_language_server",
					"ltex",
					"autotools_ls",
					"markdown_oxide",
					"spectral",
					"basedpyright",
					"rust_analyzer",
					"sqlls",
					"somesass_ls",
					"taplo",
					"terraformls",
					"volar",
					"lemminx",
					"yamlls",
					"lua_ls",
					"tsserver",
				},
			})

			require("mason-lspconfig").setup_handlers({
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({})
				end,
				-- Next, you can provide a dedicated handler for specific servers.
				-- For example, a handler override for the `rust_analyzer`:
				-- ["rust_analyzer"] = function ()
				--     require("rust-tools").setup {}
				-- end
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
