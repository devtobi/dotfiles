return  { 
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
                neotree = true
            }
        })
        vim.o.termguicolors = true
        vim.cmd.colorscheme "catppuccin"
    end
}
