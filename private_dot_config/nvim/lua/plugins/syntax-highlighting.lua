return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = {
				"typescript",
				"javascript",
				"lua",
				"json",
				"html",
				"css",
				"java",
				"python",
				"query",
				"rust",
				"go",
				"yaml",
				"toml",
				"bash",
				"tsx",
				"cpp",
				"c",
				"graphql",
				"jsonc",
				"dockerfile",
				"vim",
				"vimdoc",
				"kotlin",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}

