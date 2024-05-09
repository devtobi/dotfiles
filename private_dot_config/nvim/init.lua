-- own customizations
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Bootstrap lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}
local opts = {}

-- Register plugins and options
require("lazy").setup(plugins, opts)

-- Configure catppuccin
require("catppuccin").setup({
    flavour = "auto",
    background = {
        light = "latte",
        dark = "frappe",
    },
    default_integrations = false,
    integrations = {
        treesitter = true,
        telescope = true
    }
})
vim.cmd.colorscheme "catppuccin"

-- Configure telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Configure treesitter
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "typescript", "javascript", "lua", "json", "html", "css", "java", "python", "rust", "go", "yaml", "toml", "bash", "tsx", "cpp", "c", "graphql", "jsonc", "dockerfile", "vim", "kotlin" },
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },
})