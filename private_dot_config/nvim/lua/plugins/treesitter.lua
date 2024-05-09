return  { 
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "typescript", "javascript", "lua", "json", "html", "css", "java", "python", "rust", "go", "yaml", "toml", "bash", "tsx", "cpp", "c", "graphql", "jsonc", "dockerfile", "vim", "kotlin" },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = {
                enable = true
            },
        })
    end
}