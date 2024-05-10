return {
	"jay-babu/mason-null-ls.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("null-ls").setup({
			sources = {
				-- Anything not supported by mason
			},
		})
		require("mason-null-ls").setup({
			ensure_installed = {
				-- Formatters
				"stylua",
				"prettier",
				"isort",
				"black",
				"google-java-format",
				-- Linters
				"ansible-lint",
			},
			methods = {
				diagnostics = true,
				formatting = true,
				code_actions = true,
				completion = true,
				hover = true,
			},
			automatic_setup = true,
			automatic_installation = true,
			handlers = {},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}

