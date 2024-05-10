return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		local catppuccin = require("catppuccin")
		catppuccin.setup({
			flavour = "auto",
			background = {
				light = "latte",
				dark = "frappe",
			},
			default_integrations = false,
			integrations = {
				treesitter = true,
				telescope = true,
				neotree = true,
				mason = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
			},
		})
		vim.o.termguicolors = true
		vim.cmd.colorscheme("catppuccin")
	end,
}
